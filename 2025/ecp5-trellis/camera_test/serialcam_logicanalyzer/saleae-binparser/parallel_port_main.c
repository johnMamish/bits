/**
 * This program uses the
 */

#include <stdbool.h>
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <ctype.h>
#include <getopt.h>

#include "saleae_v2_digital.h"

#define MAX_BUS_WIDTH 8
typedef struct {
    int  bus_bitwidth;
    int  bus[MAX_BUS_WIDTH];
    uint32_t  data_valid_channel_mask;
    uint32_t  clock_channel_mask;
    bool args_valid;
    char *input_foldername;
    char *output_filename;
} program_config_t;

void parse_args(int argc, char* argv[], program_config_t* config)
{
    // Set defaults.
    config->bus_bitwidth = MAX_BUS_WIDTH;
    for (int i = 0; i < MAX_BUS_WIDTH; i++) {
        config->bus[i] = i;  // default channel list [0..7]
    }
    config->data_valid_channel_mask = 0xffffffff;
    config->clock_channel_mask = 1 << 5;
    config->args_valid         = false;
    config->input_foldername   = NULL;
    config->output_filename    = NULL;

    // Define our long options.
    // The third field (flag) is NULL, meaning we return the 'val' in the fourth field.
    // The .has_arg = required_argument means it must have an argument if present.
    static struct option long_opts[] = {
        {"channel_list",        required_argument, NULL, 'c'},
        {"data_valid_channel",  required_argument, NULL, 'd'},
        {"clock_channel",       required_argument, NULL, 'k'},
        {0, 0, 0, 0}  // terminator
    };

    // We'll parse using getopt_long().
    // We'll track how many channels we actually read if channel_list is specified.
    int channel_count = 0;

    // We allow optional arguments for channel_list beyond the first, so we’ll store them manually.
    while (true) {
        int opt_idx = 0;
        int c = getopt_long(argc, argv, "c:d:k:", long_opts, &opt_idx);

        if (c == -1) {
            // No more recognized options
            break;
        }

        switch (c) {
            case 'c': {
                // Parse channels
                channel_count = 0;
                config->bus[channel_count++] = atoi(optarg);

                // read subsequent channels.
                while ((optind < argc) && (isdigit(argv[optind][0]))) {
                    if (channel_count >= MAX_BUS_WIDTH) return;

                    config->bus[channel_count++] = atoi(argv[optind]);
                    optind++;
                }

                // Update the bus bitwidth with how many channels we parsed
                config->bus_bitwidth = channel_count;
                if (channel_count == 0) {
                    fprintf(stderr, "Error: --channel_list provided but no valid channels.\n");
                    return;
                }

                // flip the bus channels; MSbit was listed first & LSbit was listed last
                int _bus[MAX_BUS_WIDTH];
                for (int i = 0; i < config->bus_bitwidth; i++)
                    _bus[i] = config->bus[config->bus_bitwidth - 1 - i];
                for (int i = 0; i < config->bus_bitwidth; i++)
                    config->bus[i] = _bus[i];

                break;
            }

            case 'd': {
                // data_valid_channel
                int data_valid_channel = atoi(optarg);
                if ((data_valid_channel < 0) || (data_valid_channel >= 16)) {
                    fprintf(stderr, "Error: data_valid channel should be between 0 and 15.\n");
                    return;
                }
                config->data_valid_channel_mask = (1 << data_valid_channel);
                break;
            }

            case 'k': {
                int clock_channel = atoi(optarg);
                if ((clock_channel < 0) || (clock_channel >= 16)) {
                    fprintf(stderr, "Error: clock channel should be between 0 and 15.\n");
                    return;
                }
                config->clock_channel_mask = (1 << clock_channel);
                break;
            }

            case '?': default: {
                return;
            }
        }
    }

    // After we've consumed all recognized options, 'optind' should be at the first
    // positional argument. We need exactly 2 positional args (input and output).
    int remaining = argc - optind;
    if (remaining < 2) {
        fprintf(stderr, "Error: Missing required arguments <input_foldername> <output_filename>.\n");
        return;
    }
    if (remaining > 2) {
        fprintf(stderr, "Error: Too many arguments.\n");
        return;
    }

    config->input_foldername  = argv[optind];
    config->output_filename = argv[optind + 1];

    // If we got here, everything should be valid
    config->args_valid = true;
}

const char* help_string =
    "This program converts a saleae capture of a parellel port into a binary file containing the\n"
    "raw bytes that were on the parallel port.\n"
    "\n"
    "Usage: ./%s: \n"
    "    --channel_list <port MSb> ... <port LSb>  Which saleae channels are part of the parallel port?\n"
    "    --data_valid_channel <channel>            Which saleae channel indicates that data on the \n"
    "                                              parallel port is valid? Default: all data is valid.\n"
    "    --clock_channel <channel>                 Which saleae channel gives the parallel port clock?\n"
    "    <input foldername>                        Point to folder that contains saleae binary data.\n"
    "    <output filename>                         Name of binary file to dump data to.\n"
    "\n";

int main(int argc, char** argv) {
    // Parse the args.
    program_config_t args;
    parse_args(argc, argv, &args);

    if (!args.args_valid) {
        fprintf(stderr, "Error: args not valid.\n");
        fprintf(stderr, help_string, argv[0]);
        return -1;
    }

    FILE* fp = fopen(args.output_filename, "wb");

    // Read the file
    logic_t logic;
    uint32_t state;
    double tsd;
    int res;

    res = logic_init(&logic, args.input_foldername);
    if (res >= 0) {
        fprintf(stderr,"%d channels found\n", res);
        fprintf(stderr,"initial state: %04x\n", logic.state);
    }

    // Init some masks.
    uint32_t port_masks [MAX_BUS_WIDTH] = { 0 };
    for (int i = 0; i < args.bus_bitwidth; i++) {
        port_masks[i] = (1 << args.bus[i]);
    }

    // buffer to store data in
#define BUF_SIZE 65536
    static uint8_t buffer[BUF_SIZE];
    int data_count = 0;

    // Process each rising edge of the clock channel
    while (logic_replay(&logic, &state, &tsd, 0, args.clock_channel_mask)) {
        // data valid?
        if ((args.data_valid_channel_mask & state) ||
            (args.data_valid_channel_mask == 0xffffffff)) {
            // reorder bits
            uint8_t b = 0;
            for (int i = MAX_BUS_WIDTH - 1; i >= 0; i--) {
                b <<= 1;
                b |= !!(state & port_masks[i]);
            }

            // record recovered data byte
            buffer[data_count++] = b;

            // If we've reached the end of the buffer, flush it to the file.
            if (data_count == BUF_SIZE) {
                data_count = 0;
                fwrite(buffer, BUF_SIZE, 1, fp);
            }
        }
    }

    // save last block of data and close file
    fwrite(buffer, data_count, 1, fp);
    fclose(fp);

    logic_cleanup(&logic);

    return 0;
}
