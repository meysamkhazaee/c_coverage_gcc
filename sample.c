#include <stdio.h>

int main() {
  int num1, num2;
  
  printf("Enter two numbers: ");
  scanf("%d %d", &num1, &num2);

  if (num1 > num2) {
    printf("%d is greater than %d.\n", num1, num2);
  } else if (num1 < num2) {
    printf("%d is less than %d.\n", num1, num2);
  } else {
    printf("Both numbers are equal.\n");
  }

  printf("\nEnter a number to check if it's positive or negative: ");
  scanf("%d", &num1);

  if (num1 > 0) {
    printf("The number is positive.\n");
  } else if (num1 < 0) {
    printf("The number is negative.\n");
  } else {
    printf("The number is zero.\n");
  }

  return 0;
}