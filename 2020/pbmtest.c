#include <pam.h>
//#include <ppm.h>
#include <stdio.h>
#include <stdbool.h>

/*#define PAM_MEMBER_OFFSET(mbrname)                    \
  ((unsigned int)(char*)&((struct pam *)0)->mbrname)
#define PAM_MEMBER_SIZE(mbrname) \
  sizeof(((struct pam *)0)->mbrname)
#define PAM_STRUCT_SIZE(mbrname) \
(PAM_MEMBER_OFFSET(mbrname) + PAM_MEMBER_SIZE(mbrname))*/

int main(int argc, char** argv) {
    if (argc != 2) {
        printf("Usage: %s <image name>\r\n", argv[0]);
        return -1;
    }

    pm_init(argv[0], 0);

    struct pam image;
    tuple * tuplerow;
    unsigned int row;

    FILE* fp = fopen(argv[0], "r");
    pnm_readpaminit(fp, &image, PAM_STRUCT_SIZE(tuple_type));

    tuplerow = pnm_allocpamrow(&image);

    for (row = 0; row < image.height; row++) {
        unsigned int column;
        pnm_readpamrow(&image, tuplerow);

    }

    /*if (!read_pbm_image(argv[1], &image)) {
        printf("Failed to open file %s\r\n", argv[1]);
        return -1;
        }*/
    printf("Image height: %d, width: %d, depth: %d\n", image.height, image.width, image.depth);
    return 0;
}
