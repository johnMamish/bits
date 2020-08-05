/**
 * In my jpeg project I keep getting an error for trying to include stdbool??
 *
 *     /usr/include/pm_config.h:104:13: error: two or more data types in declaration specifiers
 */
#include <stdbool.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdbool.h>

int main()
{
    volatile bool foobar = true;

    if (foobar) {
        printf("baaz\r\n");
    }


    return 0;
}
