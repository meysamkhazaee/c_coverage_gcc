#include <stdint.h>
#include <stdlib.h>

// # ifndef GCC
// uint64_t ___time = 0;
// # endif

static int func1(int x1){
    int y1 = x1 + 3;
    y1++;
    return y1;
}

 

int main ( void ) {
    int x = 0;
    int y = 12;
    x = func1(y);
    x++;
    y=x-1;
    // # ifndef GCC
    // //assert ( ___time <= 26267) ;
    // # endif
    return x+y;
}
