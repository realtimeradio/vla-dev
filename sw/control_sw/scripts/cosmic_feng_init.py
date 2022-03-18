#! /usr/bin/env python

import os
import argparse
import yaml
import logging
from cosmic_f import cosmic_fengine

DEFAULT_FPGFILE = '/home/cosmic/src/vla-dev/adm_pcie_9h7_dts_dual_2x100g_dsp_8b/outputs/cosmic_feng_8b.fpg'

def main():
    parser = argparse.ArgumentParser(description='Initialize an ADM-PCIe-9H7 F-Engine pipeline',
                                     formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument('-s', dest='sync', action='store_true',
                        help ='Use this flag to sync the F-engine and Noise generators from PPS')
    parser.add_argument('-m', dest='mansync', action='store_true',
                        help ='Use this flag to manually sync the F-engine with an asynchronous software trigger')
    parser.add_argument('-i', dest='initialize', action='store_true',
                        help ='Use this flag to initialize an F-engine')
    parser.add_argument('-o', dest='outputconfig', type=str, default=None,
                        help ='YAML output configuration used to set up data outputs')
    parser.add_argument('-t', dest='tvg', action='store_true',
                        help ='Use this flag to switch to EQ TVG outputs')
    parser.add_argument('-n', dest='noise', action='store_true',
                        help ='Use this flag to switch to Noise inputs')
    parser.add_argument('-e', dest='eth', action='store_true',
                        help ='Use this flag to switch on the Ethernet outputs')
    parser.add_argument('-p','--program', action='store_true',
                        help='Program FPGAs with the pre-loaded fpg file')
    parser.add_argument('-f','--fpgfile', type=str, default=DEFAULT_FPGFILE,
                        help='Path to .fpg firmware file')
    parser.add_argument('-R','--remote', type=str, default=None,
                        help='URI to remote REST server')
    parser.add_argument('fpga_id', type=str, default=0,
                        help='FPGA pcie card ID')
    parser.add_argument('pipeline_id', type=int, default=0,
                        help='Pipeline ID on chosen FPGA card')
    args = parser.parse_args()

    hostname = 'pcie%s' % args.fpga_id

    f = cosmic_fengine.CosmicFengine(
        hostname, args.fpgfile, pipeline_id=args.pipeline_id,
        remote_uri=args.remote
    )

    f.cold_start_from_config(
            args.outputconfig,
            program = args.program,
            initialize = args.initialize,
            test_vectors = args.tvg,
            sync = args.sync,
            sw_sync = args.mansync,
            enable_eth = args.eth,
        )

if __name__ == "__main__":
    main()
