#!/usr/bin/env python
from flask import Flask
from flask_restful import Resource
from casperfpga import LocalPcieTransport
from remoteobjects.server import addRemoteObjectResources
import argparse
from cosmic_f import cosmic_fengine
from cosmic_f_remote.cosmic_fengine import CustomJsonEncoder, CustomJsonDecoder

import os

from waitress import serve


PCIE_XDMA_DICT = None


class FlaskConfig(object):
    RESTFUL_JSON = {}

    @staticmethod
    def init_app(app):
        app.json_encoder = CustomJsonEncoder
        app.json_decoder = CustomJsonDecoder
        app.config['RESTFUL_JSON']['cls'] = app.json_encoder

app = Flask(__name__)
app.config.from_object(FlaskConfig)
FlaskConfig.init_app(app)

flask_api, object_registry = addRemoteObjectResources(
    app,
    [
        cosmic_fengine.CosmicFengine
    ]
)

class RestTransport_PciXdmaMap(Resource):
    def get(self):
        return {
            'pci_xdma_id_map': PCIE_XDMA_DICT
        }, 200

flask_api.add_resource(RestTransport_PciXdmaMap, '/PciXdmaMap')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description=('Initialize a REST server exposing local PCIe FPGA device'
        'python objects as remoteobjects.')
    )
    parser.add_argument('--fpgfile', '-f', type=str,
        default='/home/cosmic/dev/vla-dev/pr_templates/adm_4x100g_pr_template_test/outputs/adm_4x100g_pr_template_test_2022-02-03_1951.fpg',
        help='Path to the initial fpg file that the PCI devices are programmed with.'
    )
    parser.add_argument('--program', '-p', action='store_true',
        help='Program the PCI devices with fpgfile.'
    )
    parser.add_argument('--redis-host', type=str, default='redishost',
        help='Redis server host address.'
    )
    parser.add_argument('--redis-port', type=int, default=6379,
        help='Redis server host port.'
    )
    args = parser.parse_args()

    PCIE_XDMA_DICT = LocalPcieTransport.get_pcie_xdma_map()

    if 'PCIE_IGNORE' in os.environ:
        for pcie_dev in os.environ['PCIE_IGNORE'].split(','):
            if pcie_dev in PCIE_XDMA_DICT:
                PCIE_XDMA_DICT.pop(pcie_dev)
            else:
                print(f"No PCIE device named `{pcie_dev}` to ignore.")

    for (pcie_id, xdma_id) in PCIE_XDMA_DICT.items():
        for pipeline_id in range(2):
            pcie_id_string = f'pcie{pcie_id}'
            obj_id = object_registry.register_new_object(
                'CosmicFengine',
                {# __init__ args
                    'host': pcie_id_string,
                    'fpgfile': args.fpgfile,
                    'pipeline_id': pipeline_id,
                    'redis_host': args.redis_host,
                    'redis_port': args.redis_port,
                }
            )
            object_id = f'{pcie_id_string}_{pipeline_id}'
            object_registry.obj_set_id(obj_id, object_id)
            feng = object_registry.get_registered_object(object_id)
            print(f'Registered CosmicFengine `{object_id}`...')
            if pipeline_id == 0 and args.program:
                feng._cfpga.upload_to_ram_and_program(args.fpgfile)
                print(f'\tProgrammed `{object_id}`...')
            elif args.program:
                feng = object_registry.get_registered_object(object_id)
                feng._cfpga.get_system_information(args.fpgfile)
                feng._initialize_blocks()
                print(f'\tInitialized `{object_id}`...')

    serve(app, host='0.0.0.0', port=6000, threads=8)