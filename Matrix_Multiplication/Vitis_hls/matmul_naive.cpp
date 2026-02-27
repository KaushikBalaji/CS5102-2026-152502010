#include <iostream>

#define N 16
#define M 16
#define P 16

void MATMUL(int A[N][M], int B[M][P], int AB[N][P]) {

#pragma HLS INTERFACE bram port=A
#pragma HLS INTERFACE bram port=B
#pragma HLS INTERFACE bram port=AB
#pragma HLS INTERFACE s_axilite port=return

    int i, j, k;

    row_loop:
    for (i = 0; i < N; i++) {

        col_loop:
        for (j = 0; j < P; j++) {

            int sum = 0;

            product_loop:
            for (k = 0; k < M; k++) {
                sum += A[i][k] * B[k][j];
            }

            AB[i][j] = sum;
        }
    }
}
