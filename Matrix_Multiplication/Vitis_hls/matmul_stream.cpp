#include <hls_stream.h>

#define N 16
#define M 16
#define P 16

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

#pragma HLS ARRAY_PARTITION variable=A complete dim=2
#pragma HLS ARRAY_PARTITION variable=B complete dim=1

    // Read A
    for(int i=0;i<N;i++)
        for(int j=0;j<M;j++)
            A[i][j] = A_stream.read();

    // Read B
    for(int i=0;i<M;i++)
        for(int j=0;j<P;j++)
            B[i][j] = B_stream.read();

    // Compute
    for(int i=0;i<N;i++){
        for(int j=0;j<P;j++){
#pragma HLS PIPELINE II=1
            int sum = 0;
            for(int k=0;k<M;k++){
#pragma HLS UNROLL
                sum += A[i][k]*B[k][j];
            }
            C_stream.write(sum);
        }
    }
}
