/**
 * Copyright 2017, John Mamish, all rights reserved
 *
 * If there are multiple usb serial ports plugged into a computer, figuring out
 * which file in the /dev/ folder maps to which device can be a tenuous game of
 * wack-a-mole
 *
 * This utility tries to solve that problem by identifying files in the /dev/
 * folder with their corresponding usb device id, vendor id, serial number,
 * product string descriptor, or manufacturer string descriptor.
 *
 * A primer on USB devices:
 * Every USB device that is connected to a computer MUST tell the computer a
 * few basic things about itself, like WHO made it (vendor id) and WHICH product
 * it is (product id).  Many devices will also include 3 strings: a
 * manufacturer name, a product name, and a serial number.
 *
 * Because manufacturers of usb <-> serial ports understand that their devices
 * will be incorporated into larger products, they generally allow users to set
 * their own vendor id, product id, manufacturer name, product name, and serial
 * number.  Generally it is not recommended to change vendor id and product id
 * because these are statically allocated by an organization known as the
 * "usb implementor's forum".  It costs a few thousand dollars a year for them
 * to allocate a number for you, and if you pick a random one willy-nilly, it
 * might collide with an existing one, causing your OS to load a bad driver for
 * the device.  (a full list of statically assigned VIDs and PIDs can be found
 * at <http://www.linux-usb.org/usb.ids>).
 *
 * Instead, I recommend that you change the product name to whatever you want
 * using the manufacturer's tool for changing device information.  For
 * instance, information FTDI's chips can be changed using their FTDIPROG tool.
 */

#include <dirent.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>

#include "matchup_usb.h"

#define ARRAY_SIZEOF(x) (sizeof(x) / (sizeof(x[0])))

static int is_regular_file(const char *path)
{
    struct stat path_stat;
    stat(path, &path_stat);
    return S_ISREG(path_stat.st_mode);
}

/**
 * Searches for devices of the form /dev/ttyUSB* or /dev/ACM*
 *
 * On success, return value is 0, on failure, it's nonzero
 */
const static char* dev_prefixes[] = {"ttyUSB", "ACM"};

static int get_serial_devs(char*** target, int* numread)
{
    DIR* d;
    struct dirent* dir;
    d = opendir("/dev/");

    *numread = 0;
    *target = NULL;

    if(d)
    {
        while((dir = readdir(d)) != NULL)
        {
            int in_list = 0;
            for(int i = 0; i < ARRAY_SIZEOF(dev_prefixes); i++)
            {
                if((strncmp(dev_prefixes[i], dir->d_name,
                            strlen(dev_prefixes[i])) == 0))
                    in_list = 1;
            }
            if(in_list)
            {
                *numread = *numread + 1;
                *target = realloc(*target, sizeof(**target) * (*numread));
                (*target)[*numread - 1] = strcpy(malloc(128), "/dev/");
                strncat((*target)[*numread - 1], dir->d_name, 96);
            }
        }

        closedir(d);
        return 0;
    }
    else
    {
        return -1;
    }
}

static void up_one_dir(char* str)
{
    //go to end of string
    char* c = str;
    while(*c != 0)
        c++;
    if(c == str)
        return;

    c--;
    if(*c == '/')
        c--;

    //find last '/'
    while((c != str) && (*c != '/'))
        c--;

    //no '/' found.
    if(c == str)
        return;
    else
        *c = '\0';
}

const char* req_files[] = {"/idProduct", "/idVendor"};
const char* opt_files[] = {"/serial", "/product", "/manufacturer"};

static int read_file_to_str(char* p, char** c)
{
    FILE* f = fopen(p, "rb");
    if(f == NULL)
        return -1;

    //fseek and ftell don't correctly give size, so we will do this slow and
    //gross method.
    int cap = 32;
    int i = 0;
    *c = malloc(cap);
    int ch;
    while((ch = fgetc(f)) != -1)
    {
        (*c)[i++] = ch;
        if((i + 1) == cap)   //need i+1 for null terminator.
            *c = realloc(*c, cap *= 2);
    }
    (*c)[i] = '\0';
    fclose(f);

    //for our special case, sometimes these files end in an unwanted \n, so we
    //will cut that off if it exists.
    if((*c)[i - 1] == '\n')
        (*c)[i - 1] = '\0';

    return 0;
}

static int read_info_from_dir(usb_qualifier_t* i, char* path)
{
    int end_ndx = strnlen(path, (1 << 12));
    char* p = malloc(end_ndx + 32);

    strcpy(p, path);
    strcat(p, req_files[0]);
    printf("opening file %s\r\n", p);
    FILE* fp = fopen(p, "rb");
    fscanf(fp, "%x", &i->pid);
    fclose(fp);
    p[end_ndx] = '\0';

    strcat(p, req_files[1]);
    printf("opening file %s\r\n", p);
    fp = fopen(p, "rb");
    fscanf(fp, "%x", &i->vid);
    fclose(fp);
    p[end_ndx] = '\0';

    i->serial_number = NULL;
    i->prod_descriptor = NULL;
    i->manu_descriptor = NULL;
#if 1
    strcat(p, opt_files[0]);
    if(read_file_to_str(p, &i->serial_number) == -1) i->serial_number = NULL;
    p[end_ndx] = '\0';

    strcat(p, opt_files[1]);
    if(read_file_to_str(p, &i->prod_descriptor) == -1) i->prod_descriptor = NULL;
    p[end_ndx] = '\0';

    strcat(p, opt_files[2]);
    if(read_file_to_str(p, &i->manu_descriptor) == -1) i->manu_descriptor = NULL;
    p[end_ndx] = '\0';
#endif

    free(p);
    return 0;
}

static int fill_usb_info(usb_qualifier_t** info, char** usb_paths, int ndevs)
{
    //copy all of the usb paths so that they aren't clobbered.
    int retval = 0;
    char** ptemp = malloc(ndevs * sizeof(*ptemp));
    for(int i = 0; i < ndevs; i++)
        ptemp[i] = strndup(usb_paths[i], (1 << 12));

    *info = malloc(ndevs * sizeof(**info));

    for(int i = 0; i < ndevs; i++)
    {
        int all_satisfied = 0;
        do
        {
            //in current path, try to find vendor id, product id, etc.
            all_satisfied = 1;
            for(int j = 0; j < ARRAY_SIZEOF(req_files); j++)
            {
                int mallocsize = strnlen(ptemp[i], (1 << 12)) + 32;
                char* tpath = malloc(mallocsize);
                strncpy(tpath, ptemp[i], mallocsize);
                strncat(tpath, req_files[j], (1 << 11));
                printf("checking for file %s... ", tpath);
                if(access(tpath, F_OK) == -1)
                {
                    printf("missing.\r\n");
                    all_satisfied = 0;
                    free(tpath);
                    break;
                }
                else
                    printf("found.\r\n");
                free(tpath);
            }

            //either copy out data or move up one dir, depending on whether all
            //the needed files existed.
            if(all_satisfied)
            {
                printf("XXX TODO copy data from files in this dir\r\n");
                if(read_info_from_dir(&(*info)[i], ptemp[i]))
                {
                    retval = -1;
                    goto cleanup;
                }
            }
            else
            {
                up_one_dir(ptemp[i]);
            }
            printf("strnlen dir = %i\r\n\r\n", strnlen(ptemp[i], 5));
        } while((!all_satisfied) && (strnlen(ptemp[i], 5) > 4));
    }

cleanup:
    for(int i = 0; i < ndevs; i++)
        free(ptemp[i]);
    free(ptemp);

    return retval;
}

static int get_usb_paths(char*** usb_paths, char** devnames, int ndevs)
{
    *usb_paths = malloc(ndevs * sizeof(**usb_paths));
    char pathbuf[128];
    for(int i = 0; i < ndevs; i++)
    {
        memset(pathbuf, 0, 128);
        strcpy(pathbuf, "udevadm info -q path -n ");
        FILE* output = popen(strncat(pathbuf, devnames[i], 64), "r");

        int j = 4;
        int cap = 32;
        int ch;
        (*usb_paths)[i] = malloc(cap);
        strcpy((*usb_paths)[i], "/sys");
        while((ch = fgetc(output)) != -1)
        {
            (*usb_paths)[i][j++] = ch;
            if(j >= (cap - 1))
                (*usb_paths)[i] = realloc((*usb_paths)[i], cap *= 2);
        }
        (*usb_paths)[i][--j] = '\0';  //j-- to strip '\n' that appears at end

        fclose(output);
    }

    return 0;
}

/**
 *
 */
int check_usb_qualifiers(usb_qualifier_t* target, usb_qualifier_t* candidate)
{
    if((target->vid != -1) && (target->vid != candidate->vid))
        return 0;
    if((target->pid != -1) && (target->pid != candidate->pid))
        return 0;
    if((target->serial_number != NULL) &&
       (strncmp(target->serial_number, candidate->serial_number, 4096)))
        return 0;
    if((target->prod_descriptor != NULL) &&
       (strncmp(target->prod_descriptor, candidate->prod_descriptor, 4096)))
        return 0;
    if((target->manu_descriptor != NULL) &&
       (strncmp(target->manu_descriptor, candidate->manu_descriptor, 4096)))
        return 0;

    return 1;
}

/**
 * Given a list of usb_qualifier_t structs, returns a list of any usb devices
 * that match any of the devices specified by the input list.
 *
 * @param[in]    targets   A list of usb information to search for
 * @param[in]    n         Number of targets
 * @param[out]   results   A list of char* containing c strings with the names
 *               of all /dev/ devices that match anything in the targets list.
 *               Should not point to allocated memory on startup.
 * @return       Returns the number of items in the results list.
 */
int matchup_usb(usb_qualifier_t* targets, int n, char*** results)
{
    int nresults = 0;

    //get a list of everything in /dev/ that smells like a serial device.
    char** target;
    int numread;
    if(get_serial_devs(&target, &numread))
    {
        nresults = -1;
        goto cleanup;
    }

    //find corresponding usb paths for those devices.
    char** usb_paths;
    if(get_usb_paths(&usb_paths, target, numread))
    {
        nresults = -1;
        goto cleanup;
    }

    //get usb information about those devices.
    usb_qualifier_t* infos;
    if(fill_usb_info(&infos, usb_paths, numread))
    {
        nresults = -1;
        goto cleanup;
    }

    //search through all of the usb info that we got and see if any match up
    //with the info that we specified
    *results = NULL;
    for(int i = 0; i < numread; i++)
    {
        for(int j = 0; j < n; j++)
        {
            if(check_usb_qualifiers(&targets[j], &infos[i]))
            {
                *results = realloc(*results, sizeof(**results) * (++nresults));
                (*results)[nresults - 1] = strndup(target[i], (1 << 12));
            }
        }
    }

    //free everythong
cleanup:
    for(int i = 0; i < numread; i++)
    {
        //printf("%s\r\n", target[i]);
        /*printf("vid: %04x, pid: %04x, serial: %-10s, product: %-10s, "
               "manu: %-10s\r\n\r\n", infos[i].vid, infos[i].pid,
               infos[i].serial_number, infos[i].prod_descriptor,
               infos[i].manu_descriptor);*/
        free(usb_paths[i]);
        free(target[i]);
        free(infos[i].serial_number);
        free(infos[i].prod_descriptor);
        free(infos[i].manu_descriptor);
    }
    free(infos);
    free(usb_paths);
    free(target);

    return nresults;
}

//example function usage.
#if 0
int main(int argc, char** argv)
{
    usb_qualifier_t q = {.vid = 0x0403, .pid = 0x6001, .serial_number = NULL,
                        .prod_descriptor = "USB <-> Serial",
                        .manu_descriptor = NULL};
    char** results;
    int n = matchup_usb(&q, 1, &results);

    if(n == -1)
    {
        printf("error getting stuff\r\n");
        return -1;
    }

    for(int i = 0; i < n; i++)
    {
        printf("%s matches device info\r\n", results[i]);
        free(results[i]);
    }
    free(results);

    return 0;
}

#endif
