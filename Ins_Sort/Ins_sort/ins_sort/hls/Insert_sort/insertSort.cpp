#include <hls_stream.h>
#include <ap_int.h>
#include <ap_axi_sdata.h>

#define MAX_SIZE 100
typedef ap_axiu<32,0,0,0> axis_t;

// AXIS packet structure
//struct axis_t {
//    int data;
//    bool last;
//};

void insertion_sort_axis(hls::stream<axis_t> &in_stream,
                         hls::stream<axis_t> &out_stream) {

    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    int arr[MAX_SIZE];
    #pragma HLS ARRAY_PARTITION variable=arr cyclic factor=4

    int n = 0;

    // =========================
    // READ FROM INPUT STREAM
    // =========================
    axis_t temp;

    do {
        temp = in_stream.read();
        arr[n++] = temp.data;
    } while (!temp.last && n < MAX_SIZE);

    // =========================
    // INSERTION SORT
    // =========================
    for (int i = 1; i < n; i++) {
        int key = arr[i];
        int j = i - 1;

        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = key;
    }

    // =========================
    // WRITE TO OUTPUT STREAM
    // =========================
    for (int i = 0; i < n; i++) {
        axis_t out_pkt;

        out_pkt.data = arr[i];
        out_pkt.last = (i == n - 1);
        out_pkt.keep = -1;   // all bytes valid (VERY IMPORTANT)
        out_pkt.strb = -1;   // all bytes strobe

        out_stream.write(out_pkt);
    }
}
