#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) 
{
  if (argc != 4) 
  {
    printf("Invalid number of arguments. Please provide three numbers.\n");
    return 1;
  }

  int num1 = atoi(argv[1]);
  int num2 = atoi(argv[2]);
  int num3 = atoi(argv[3]);

  // Compare num1 and num2
  if (num1 > num2) 
  {
    printf("%d is greater than %d.\n", num1, num2);
  } else if (num1 < num2) 
  {
    printf("%d is less than %d.\n", num1, num2);
  } else 
  {
    printf("Both numbers are equal.\n");
  }

  // Check num3 for positivity or negativity
  if (num3 > 0) 
  {
    printf("The number is positive.\n");
  } else if (num3 < 0) 
  {
    printf("The number is negative.\n");
  } else 
  {
    printf("The number is zero.\n");
  }

  return 0;
}