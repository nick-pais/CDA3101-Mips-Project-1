# CDA3101-Mips-Project-1

We have an array A which has 12 numbers out of which 6 are positive and other 6, negative. All numbers are unique integer numbers (no duplicates). The allowed numbers are in the range -100 to 100 (0 is excluded). Calculate the average of only the positive elements and print the result.

Your assembly implementation should exactly follow the pseudo code sequence given below. Please do not perform any optimization at pseudo code level or at assembly level.

Inputs: A[12] = {-89, 19, 91, -23, -31, -96, 3, 67, 17, 13, -43, -74}

We will also test your code using other possible values in the A array. The array A will always have 12 unique integer numbers in the range -100 to 100 (0 is excluded) out of which 6 are positive. Sum of positive numbers will always be divisible by the number of positive numbers. Please test your MIPS assembly with other possible values in A.

Outputs (with expected values for the above input)
Average of positive array elements: 35
    

Pseudo-code:

int A[12] = {-89, 19, 91, -23, -31, -96, 3, 67, 17, 13, -43, -74}; int sum = 0;
int average = 0;
int i=0;
/*find the average of positive array elements*/ for (i = 0; i < 12; i++) {
      if( A[i] > 0 ) {
            sum = sum + A[i];
} }
average = sum/6;
printf("Average of positive array elements: %d\n", average);
