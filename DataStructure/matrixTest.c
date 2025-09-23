#include <stdio.h>

int main() {
    int r1, r2, c1, c2, i, j, k;

    // Get the size of the first matrix
    printf("Enter the row size and column size of the First Matrix: \n");
    scanf("%d %d", &r1, &c1);

    // Get the size of the second matrix
    printf("Enter the row size and column size of the Second Matrix: \n");
    scanf("%d %d", &r2, &c2);

    // Check if matrix multiplication is possible
    if (c1 != r2) {
        printf("Matrix multiplication is not possible\n");
        return 0;
    }

    // Declare the matrices and result matrix
    int a[r1][c1], b[r2][c2], mul[r1][c2];

    // Input the first matrix
    printf("Enter the %d elements of the First Matrix: \n", r1 * c1);
    for (i = 0; i < r1; i++) {
        for (j = 0; j < c1; j++) {
            scanf("%d", &a[i][j]);
        }
    }

    // Input the second matrix
    printf("Enter the %d elements of the Second Matrix: \n", r2 * c2);
    for (i = 0; i < r2; i++) {
        for (j = 0; j < c2; j++) {
            scanf("%d", &b[i][j]);
        }
    }

    // Display the first matrix
    printf("\nThe elements in the First Matrix are: \n");
    for (i = 0; i < r1; i++) {
        for (j = 0; j < c1; j++) {
            printf("%d ", a[i][j]);
        }
        printf("\n");
    }

    // Display the second matrix
    printf("\nThe elements in the Second Matrix are: \n");
    for (i = 0; i < r2; i++) {
        for (j = 0; j < c2; j++) {
            printf("%d ", b[i][j]);
        }
        printf("\n");
    }

    // Matrix multiplication
    for (i = 0; i < r1; i++) {
        for (j = 0; j < c2; j++) {
            mul[i][j] = 0; // Initialize the result matrix
            for (k = 0; k < c1; k++) {
                mul[i][j] += a[i][k] * b[k][j];
            }
        }
    }

    // Display the result 
    printf("\nMatrix Multiplication Result: \n");
    for (i = 0; i < r1; i++) {
        for (j = 0; j < c2; j++) {
            printf("%d ", mul[i][j]);
        }
        printf("\n");
    }

    return 0;
}
