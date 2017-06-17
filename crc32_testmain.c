#include <stdio.h>
#include <stdint.h>

#define POLY ((uint32_t)0x04c11db7)
uint32_t naive_crc32(uint8_t* data, int len)
{
    uint32_t shift = 0x00000000;
    uint32_t pop_out;
    uint32_t shft_in;
    uint32_t crc32_topmask = (((uint32_t)1) << 31);
    int counter = 0;

    for(int i = 0; i < len; i++)
    {
        uint8_t activenum = data[i];
        for(int j = 0; j < 8; j++)
        {
            shft_in = 0;
            pop_out = 0;

            if(activenum & 0x80u)
                shft_in = 1;

            if(shift & crc32_topmask)
                pop_out = 1;

            shift <<= 1;
            activenum <<= 1;

            if(shft_in ^ pop_out)
                shift ^= POLY;

#if 0
            printf("   Shift in of [%i] results in ", shft_in);
            for(uint32_t q = (1u << 31); q; q >>= 1)
            {
                printf("%i", !!(q & shift));
            }
            printf("\r\n");
#endif
        }
    }

    return shift;
}


uint32_t message[] = {0x04030201, 0x08070605, 0x00000000, 0xd879bb26};
uint8_t byte_message[] = {0xff, 0xff, 0xff, 0xff,

                          0x00, 0x00, 0xff, 0xff,
                          0xff, 0xff, 0x00, 0x00,

                          0x00, 0xff, 0x00, 0xff,
                          0xff, 0x00, 0xff, 0x00,

                          0x0f, 0x0f, 0x0f, 0x0f,
                          0xf0, 0xf0, 0xf0, 0xf0,

                          0x33, 0x33, 0x33, 0x33,
                          0xcc, 0xcc, 0xcc, 0xcc,

                          0x55, 0x55, 0x55, 0x55,
                          0xaa, 0xaa, 0xaa, 0xaa,

                          0xCF, 0x97, 0x00, 0xBF};


int main(int argc, char** argv)
{
    printf("result = 0x%08x\r\n", naive_crc32(byte_message, sizeof(byte_message)));
    return 0;
}
