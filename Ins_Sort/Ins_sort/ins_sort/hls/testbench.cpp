#include <iostream>
#include <hls_stream.h>
#include <algorithm>   // for std::sort
#include <hls_stream.h>
#include <ap_axi_sdata.h>

typedef ap_axiu<32,0,0,0> axis_t;
using namespace std;


// DUT declaration
void insertion_sort_axis(hls::stream<axis_t> &in_stream,
                         hls::stream<axis_t> &out_stream);

#define N 10   // test size (can change, <=100)

int main() {

    hls::stream<axis_t> in_stream;
    hls::stream<axis_t> out_stream;

    int input[N]  = {9, 3, 7, 1, 8, 2, 5, 4, 6, 0};
    int expected[N];

    // =========================
    // PREPARE GOLDEN OUTPUT
    // =========================
    for (int i = 0; i < N; i++) {
        expected[i] = input[i];
    }
    sort(expected, expected + N);

    // =========================
    // SEND INPUT STREAM
    // =========================
    for (int i = 0; i < N; i++) {
        axis_t pkt;
        pkt.data = input[i];
        pkt.last = (i == N - 1);
        in_stream.write(pkt);
    }

    // =========================
    // CALL DUT
    // =========================
    insertion_sort_axis(in_stream, out_stream);

    // =========================
    // READ OUTPUT + VERIFY
    // =========================
    bool pass = true;

    for (int i = 0; i < N; i++) {
        axis_t out_pkt = out_stream.read();

        cout << "Output[" << i << "] = " << out_pkt.data
             << " | Expected = " << expected[i] << endl;

        if (out_pkt.data != expected[i]) {
            pass = false;
        }

        // Check LAST signal correctness
        if (out_pkt.last != (i == N - 1)) {
            cout << "LAST signal mismatch at index " << i << endl;
            pass = false;
        }
    }

    // =========================
    // FINAL RESULT
    // =========================
    if (pass)
        cout << "\n✅ TEST PASSED\n";
    else
        cout << "\n❌ TEST FAILED\n";

    return 0;
}
