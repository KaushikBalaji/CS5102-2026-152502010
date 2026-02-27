#include <iostream>
#include <cstdlib>

#define N 16
#define M 16
#define P 16

void MATMUL(int A[N][M], int B[M][P], int AB[N][P]);

int main() {

    int A[N][M];
    int B[M][P];
    int AB[N][P];
    int AB_golden[N][P];

    // Initialize matrices
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < M; j++) {
            A[i][j] = rand() % 5;
        }
    }

    for (int i = 0; i < M; i++) {
        for (int j = 0; j < P; j++) {
            B[i][j] = rand() % 5;
        }
    }

    // Call HLS function
    MATMUL(A, B, AB);

    // Golden reference calculation
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < P; j++) {
            int sum = 0;
            for (int k = 0; k < M; k++) {
                sum += A[i][k] * B[k][j];
            }
            AB_golden[i][j] = sum;
        }
    }

    // Compare results
    int errors = 0;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < P; j++) {
            if (AB[i][j] != AB_golden[i][j]) {
                errors++;
            }
        }
    }

    if (errors == 0)
        std::cout << "TEST PASSED!" << std::endl;
    else
        std::cout << "TEST FAILED! Errors = " << errors << std::endl;

    return 0;
}
