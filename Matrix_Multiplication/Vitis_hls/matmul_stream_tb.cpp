#include <iostream>
#include <cstdlib>
#include <hls_stream.h>

#define N 16
#define M 16
#define P 16

void MATMUL(
    hls::stream<int> &A_stream,
    hls::stream<int> &B_stream,
    hls::stream<int> &C_stream
);

int main() {

    int A[N][M];
    int B[M][P];
    int C_hw[N][P];
    int C_golden[N][P];

    hls::stream<int> A_stream;
    hls::stream<int> B_stream;
    hls::stream<int> C_stream;

    // Initialize matrices
    for(int i=0;i<N;i++)
        for(int j=0;j<M;j++)
            A[i][j] = rand()%5;

    for(int i=0;i<M;i++)
        for(int j=0;j<P;j++)
            B[i][j] = rand()%5;

    // Push A into stream
    for(int i=0;i<N;i++)
        for(int j=0;j<M;j++)
            A_stream.write(A[i][j]);

    // Push B into stream
    for(int i=0;i<M;i++)
        for(int j=0;j<P;j++)
            B_stream.write(B[i][j]);

    // Call HLS function
    MATMUL(A_stream, B_stream, C_stream);

    // Read results from stream
    for(int i=0;i<N;i++)
        for(int j=0;j<P;j++)
            C_hw[i][j] = C_stream.read();

    // Golden reference
    for(int i=0;i<N;i++)
        for(int j=0;j<P;j++){
            int sum = 0;
            for(int k=0;k<M;k++)
                sum += A[i][k]*B[k][j];
            C_golden[i][j] = sum;
        }

    // Compare
    int errors = 0;
    for(int i=0;i<N;i++)
        for(int j=0;j<P;j++)
            if(C_hw[i][j] != C_golden[i][j])
                errors++;

    if(errors == 0)
        std::cout << "TEST PASSED\n";
    else
        std::cout << "TEST FAILED: " << errors << " errors\n";

    return 0;
}
