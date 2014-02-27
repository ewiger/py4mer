#include <stdio.h>
#include <stdint.h>

#include "multmod.h"

int main( int argc, char * argv [] ) {
    printf( "argc = %d\n", argc );

    for(int i = 0; i < argc; ++i ) {
        printf( "argv[ %d ] = %s\n", i, argv[ i ] );
    }

    // test mult
    //mult((double) 2, (double) 3);
    multi(2, 3);
}
