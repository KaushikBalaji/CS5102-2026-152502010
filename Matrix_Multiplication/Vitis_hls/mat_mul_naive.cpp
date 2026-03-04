#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>

#define N 16
#define M 16
#define P 16

typedef ap_axiu<512,0,0,0> axis_512_t;

void MATMUL_NAIVE_STREAM(hls::stream<axis_512_t> &s_axis,
                         hls::stream<axis_512_t> &m_axis) {

#pragma HLS INTERFACE axis port=s_axis
#pragma HLS INTERFACE axis port=m_axis
#pragma HLS INTERFACE ap_ctrl_none port=return

    int A[N][M];
    int B[M][P];
    int C[N][P];

    // Load Matrix A
load_A:
    for(int i=0;i<N;i++){
        axis_512_t pkt = s_axis.read();
        for(int k=0;k<M;k++){
#pragma HLS UNROLL
            A[i][k] = (int)pkt.data.range(k*32+31, k*32);
        }
    }

    // Load Matrix B
load_B:
    for(int i=0;i<M;i++){
        axis_512_t pkt = s_axis.read();
        for(int k=0;k<P;k++){
#pragma HLS UNROLL
            B[i][k] = (int)pkt.data.range(k*32+31, k*32);
        }
    }

    // NAIVE computation
row:
    for(int i=0;i<N;i++){
    col:
        for(int j=0;j<P;j++){

            int sum = 0;

        product:
            for(int k=0;k<M;k++){
                sum += A[i][k] * B[k][j];
            }

            C[i][j] = sum;
        }
    }

    // Write result matrix
store:
    for(int i=0;i<N;i++){

        ap_uint<512> result = 0;

        for(int j=0;j<P;j++){
#pragma HLS UNROLL
            result.range(j*32+31, j*32) = (ap_uint<32>)C[i][j];
        }

        axis_512_t out_pkt;
        out_pkt.data = result;
        out_pkt.keep = -1;
        out_pkt.last = (i == N-1);

        m_axis.write(out_pkt);
    }
}
