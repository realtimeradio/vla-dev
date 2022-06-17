#!/usr/bin/env python
from flask import Flask
from flask_restful import Resource
from casperfpga import LocalPcieTransport
from remoteobjects.server import addRemoteObjectResources, ObjectRegistry
import argparse
from cosmic_f import cosmic_fengine

PCIE_XDMA_DICT = None

app = Flask(__name__)
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
    args = parser.parse_args()

    PCIE_XDMA_DICT = LocalPcieTransport.get_pcie_xdma_map()
    for (pcie_id, xdma_id) in PCIE_XDMA_DICT.items():
        for pipeline_id in range(2):
            pcie_id_string = f'pcie{pcie_id}'
            obj_id = object_registry.register_new_object(
                'CosmicFengine',
                {# __init__ args
                    'host': pcie_id_string,
                    'fpgfile': args.fpgfile,
                    'pipeline_id': pipeline_id
                }
            )
            object_id = f'{pcie_id_string}_{pipeline_id}'
            object_registry.obj_set_id(obj_id, object_id)
            print(f'Registered CosmicFengine `{object_id}`...')
            if pipeline_id == 0 and args.program:
                object_registry.get_registered_object(object_id)._cfpga.upload_to_ram_and_program(args.fpgfile)
                print(f'\tProgrammed `{object_id}`...')

    app.run(host='0.0.0.0', port=6000, debug=False)