#include <stdio.h>
#include "myHeader.h"

int main() {
    int num1, num2, result;
    char operator;

    printf("Enter an expression: ");
    scanf("%d %c %d", &num1, &operator, &num2);

    switch (operator) {
        case '+':
            result = add(num1, num2);
            break;
        case '-':
            result = subtract(num1, num2);
            break;
        case '*':
            result = multiply(num1, num2);
            break;
        case '/':
            result = divide(num1, num2);
            break;
        case '%':
            result = modulus(num1, num2);
            break;
        case '^':
            result = power(num1, num2);
            break;
        default:
            printf("Invalid operator\n");
            return 1;
    }

    printf("%d %c %d = %d\n", num1, operator, num2, result);
    return 0;
}
