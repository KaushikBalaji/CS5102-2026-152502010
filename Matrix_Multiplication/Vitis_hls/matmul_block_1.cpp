#include <hls_stream.h>

#define N 16
#define M 16
#define P 16
#define BS 4          // Block size
#define UF 4          // Unroll factor (controls DSP usage)

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

#pragma HLS ARRAY_PARTITION variable=A cyclic factor=UF dim=2
#pragma HLS ARRAY_PARTITION variable=B cyclic factor=UF dim=1

    // Read A
    for(int i=0;i<N;i++)
        for(int j=0;j<M;j++)
            A[i][j] = A_stream.read();

    // Read B
    for(int i=0;i<M;i++)
        for(int j=0;j<P;j++)
            B[i][j] = B_stream.read();

    // Initialize C
    for(int i=0;i<N;i++)
        for(int j=0;j<P;j++)
#pragma HLS PIPELINE
            C[i][j] = 0;

    // Blocked multiplication
    for(int ii=0; ii<N; ii+=BS){
        for(int jj=0; jj<P; jj+=BS){
            for(int kk=0; kk<M; kk+=BS){

                for(int i=ii; i<ii+BS; i++){
                    for(int j=jj; j<jj+BS; j++){

#pragma HLS PIPELINE II=1
                        for(int k=kk; k<kk+BS; k++){
#pragma HLS UNROLL factor=UF
                            C[i][j] += A[i][k] * B[k][j];
                        }

                    }
                }

            }
        }
    }

    // Write C
    for(int i=0;i<N;i++)
        for(int j=0;j<P;j++)
            C_stream.write(C[i][j]);
}
