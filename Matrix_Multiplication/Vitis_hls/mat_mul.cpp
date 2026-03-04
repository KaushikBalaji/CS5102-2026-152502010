#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>

#define N 16
#define M 16
#define P 16

typedef ap_axiu<512, 0, 0, 0> axis_512_t;

void MATMUL(hls::stream<axis_512_t> &s_axis,
            hls::stream<axis_512_t> &m_axis) {

    #pragma HLS INTERFACE axis port=s_axis
    #pragma HLS INTERFACE axis port=m_axis
    #pragma HLS INTERFACE ap_ctrl_none port=return

    int A[N][M];
    int B[M][P];
    int AB[N][P];

    #pragma HLS ARRAY_PARTITION variable=A  type=complete dim=2
    #pragma HLS ARRAY_PARTITION variable=B  type=complete dim=1
    #pragma HLS ARRAY_PARTITION variable=AB type=complete dim=0

    load_A: for(int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        axis_512_t pkt = s_axis.read();		// 1 row = 16*32 = 512 bits, so 1 row of data is fetched as a single packet here
        for(int k = 0; k < M; k++) {
            #pragma HLS UNROLL
        	// loop unroll to make sure all 16 integers are assigned parallely.
            A[i][k] = (int)pkt.data.range(k*32+31, k*32);	// gets the 16 integer values from the 512bits packet
        }
    }		// 18 cycle latency

    load_B: for(int i = 0; i < M; i++) {
        #pragma HLS PIPELINE II=1
        axis_512_t pkt = s_axis.read();
        for(int k = 0; k < P; k++) {
            #pragma HLS UNROLL
            B[i][k] = (int)pkt.data.range(k*32+31, k*32);
        }
    }		// 18 cycle latency

    // ---------------------------------------------

    row: for(int i = 0; i < N; ++i) {
        #pragma HLS PIPELINE II=4
        col: for(int j = 0; j < P; ++j) {
            int acc = 0;
            product: for(int k = 0; k < M; ++k) {
                #pragma HLS UNROLL
                acc += A[i][k] * B[k][j];
            }
            AB[i][j] = acc;
        }
    }

    store: for(int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        ap_uint<512> result = 0;
        for(int j = 0; j < P; j++) {
            #pragma HLS UNROLL
            result.range(j*32+31, j*32) = (ap_uint<32>)AB[i][j];
        }
        axis_512_t out_pkt;
        out_pkt.data = result;
        out_pkt.keep = -1;
        out_pkt.last = (i == N-1);
        m_axis.write(out_pkt);
    }
}
