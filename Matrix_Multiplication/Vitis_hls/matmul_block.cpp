#include <hls_stream.h>

#define N 16
#define M 16
#define P 16
#define BS 4     // Block Size

void MATMUL(
    hls::stream<int> &A_stream,
    hls::stream<int> &B_stream,
    hls::stream<int> &C_stream
) {

#pragma HLS INTERFACE axis port=A_stream
#pragma HLS INTERFACE axis port=B_stream
#pragma HLS INTERFACE axis port=C_stream
#pragma HLS INTERFACE s_axilite port=return

    int A[N][M];
    int B[M][P];
    int C[N][P];

#pragma HLS ARRAY_PARTITION variable=A cyclic factor=BS dim=2
#pragma HLS ARRAY_PARTITION variable=B cyclic factor=BS dim=1
#pragma HLS ARRAY_PARTITION variable=C cyclic factor=BS dim=2

    // =========================
    // Load A and B from stream
    // =========================
    for(int i=0;i<N;i++)
        for(int j=0;j<M;j++)
#pragma HLS PIPELINE II=1
            A[i][j] = A_stream.read();

    for(int i=0;i<M;i++)
        for(int j=0;j<P;j++)
#pragma HLS PIPELINE II=1
            B[i][j] = B_stream.read();

    // Initialize C
    for(int i=0;i<N;i++)
        for(int j=0;j<P;j++)
#pragma HLS PIPELINE II=1
            C[i][j] = 0;

    // =========================
    // Block Matrix Multiplication
    // =========================
    for(int ii = 0; ii < N; ii += BS)
        for(int jj = 0; jj < P; jj += BS)
            for(int kk = 0; kk < M; kk += BS) {

                // Compute one BS×BS tile
                for(int i = 0; i < BS; i++) {
#pragma HLS UNROLL
                    for(int j = 0; j < BS; j++) {
#pragma HLS UNROLL
                        int sum = C[ii+i][jj+j];

                        for(int k = 0; k < BS; k++) {
#pragma HLS PIPELINE II=1
                            sum += A[ii+i][kk+k] *
                                   B[kk+k][jj+j];
                        }

                        C[ii+i][jj+j] = sum;
                    }
                }
            }

    // =========================
    // Write result to stream
    // =========================
    for(int i=0;i<N;i++)
        for(int j=0;j<P;j++)
#pragma HLS PIPELINE II=1
            C_stream.write(C[i][j]);
}
