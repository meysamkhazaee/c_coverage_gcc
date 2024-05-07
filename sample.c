#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) 
{
  printf("Program name: %s\n", argv[0]);
  FILE *fptr;
  int num1;
  int num2;
  int num3;
  if (argc < 2) {
    printf("Usage: %s .not input\n", argv[0]);
    return 1;
  }
  else if(argc == 2){
    printf("Number of arguments: %d\nRead From File\n", argc - 1);
    fptr = fopen(argv[1], "r");
    fscanf(fptr, "%d", &num1);
    fscanf(fptr, "%d", &num2);
    fscanf(fptr, "%d", &num3);
  }
  else if (argc == 4) {
    num1 = atoi(argv[1]);
    num2 = atoi(argv[2]);
    num3 = atoi(argv[3]);
  }
  else{
    printf("Invalid number of arguments. Please provide three numbers.\n");
    return 1;
  }

  // Compare num1 and num2
  if (num1 > num2) {
    printf("num1 = %d is greater than num2 = %d.\n", num1, num2);
  } 
  else if (num1 < num2) {
    printf("num1 = %d is less than num2 = %d.\n", num1, num2);
  } 
  else {
    printf("Both numbers are equal.\n");
  }

  // Check num3 for positivity or negativity
  if (num3 > 0) 
  {
    printf("%d is positive.\n", num3);
  } else if (num3 < 0) 
  {
    printf("%d is negative.\n", num3);
  } else 
  {
    printf("%d is zero.\n", num3);
  }

  return 0;
}
