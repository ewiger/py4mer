#include <stdint.h>

#ifndef HAVE_LONGDOUBLE
    #define HAVE_LONGDOUBLE 1
#endif

typedef struct {
    float real;
    float imag;
} complex64;

typedef struct {
    double real;
    double imag;
} complex128;

#if HAVE_LONGDOUBLE
typedef struct {
    long double real;
    long double imag;
} complex256;
#endif

typedef float float32;
typedef double float64;
#if HAVE_LONGDOUBLE
typedef long double float128;
#endif

/* Prototypes */
extern float64 mult(float64, float64);
extern float32 multf(float32, float32);
extern int32_t multi(int32_t, int32_t);
extern complex128 multc(complex128, complex128);
