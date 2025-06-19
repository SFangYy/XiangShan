#coding=utf8

import sys
import signal
import os
from XSPython import DUTSimTop, difftest as df, xsp
from XSPdb import *

def handle_sigint(signum, frame):
    print("\nReceived SIGINT, exit.")
    sys.exit(0)
signal.signal(signal.SIGINT, handle_sigint)


def test_sim_top():
    # init
    search_path = ["microbench.bin",
                "./ready-to-run/microbench.bin",
                "../ready-to-run/microbench.bin",
                "../microbench.bin",
                ]
    bin_path = None
    for path in search_path:
        if os.path.exists(path):
            bin_path = path
            break
        bin_path = None
    if bin_path is None:
        print("microbench.bin not found.")
        sys.exit(1)
    # Create DUT
    dut = DUTSimTop()
    XSPdb(dut, df, xsp, bin_path).set_trace()
    try:
        while True:
            dut.Step(10000000)
    except Exception as e:
        print("Exit.")


if __name__ == "__main__":
    test_sim_top()


