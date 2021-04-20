/* ================================================================== */
/* The Savage Benchmark                                             
 * 
 * R. Duncan, "16-bit Software Toolbox", Dr. Dobb’s Journal, Number 83,
 * September 1983, p. 120 */
/* ------------------------------------------------------------------ */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char *argv[]) {

/* declare integer-valued variables for the loop index, i, and the 
 * number of savage loop iterations, n. */
   long long int i, n;

/* declare a real-valued variable for the accumulated sum, a. */
   double a; 

/* read in the number of savage loop iterations from the command-line */
   if (argc == 2) {
      n = atoll(argv[1]);
   }
   else {
      printf("savage: ERROR :: Expecting only one command-line argument -- the number of iterations for the savage benchmark loop, n.\n");
   }

/* write the number of savage loop iterations to standard output */
   printf("n = %llu\n", n);

/* initialize a to 1 */
   a = 1.0;

/* perform the savage benchmark loop and compute the accumulated sum */
   for (i = 1; i < n; i++) {
      a = tan(atan(exp(log(sqrt(a*a))))) + 1.0;
   }

/* write the accumulated sum to standard output */
   printf("a = %f\n", a);

   return 0;
}
/* ================================================================== */
