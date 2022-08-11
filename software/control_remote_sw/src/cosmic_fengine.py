import json
import numpy as np
import io
from remoteobjects.client import defineRemoteClass


__COSMIC_FENGINE_REMOTE__ = None

class CustomJsonEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, complex):
            return (obj.real, obj.imag)
        elif isinstance(obj, np.ndarray):
            memfile = io.BytesIO()
            np.save(memfile, obj)

            serialized = memfile.getvalue()
            return serialized.decode('latin-1')
        else:
            return super().default(obj)

class CustomJsonDecoder(json.JSONDecoder):
    def decode(self, obj):
        rv = super().decode(obj)
        if isinstance(rv, dict) and 'value' in rv:
            # remote-object return values are returned as {'value': object} dicts
            try:
                memfile = io.BytesIO()
                memfile.write(rv['value'].encode('latin-1'))
                memfile.seek(0)
                return {'value': np.load(memfile)}
            except:
                pass

        return rv

class CosmicFengine():
    global __COSMIC_FENGINE_REMOTE__

    def __new__(cls, host, remote_uri, pipeline_id=0, attribute_depth_allowance=1, CosmicFengineRemote_cldef=None):
        """
        An alternative mimicry class that returns a CosmicFengineRemote instance
        instead of the expected `CosmicFengine` instance.

        :param remote_uri: RemoteObjects host address, eg. `http://192.168.32.100:6000`. This 
            causes self to be a CosmicFengineRemote instance.
        :type remote_uri: str

        :param pipeline_id: Zero-indexed ID of the pipeline on this host.
        :type pipeline_id: int

        :param attribute_depth_allowance: The nested attribute depth to expose.
        :type attribute_depth_allowance: int

        :param CosmicFengineRemote_cldef: The defined `CosmicFengineRemote_cldef` class. If `None` (as is
            default) a definition is created.
        :type CosmicFengineRemote_cldef: class
        """
        global __COSMIC_FENGINE_REMOTE__
        if CosmicFengineRemote_cldef is None:
            CosmicFengineRemote_cldef = __COSMIC_FENGINE_REMOTE__

        if CosmicFengineRemote_cldef is None:
            definition_dict={}
            defineRemoteClass(
                    'CosmicFengine',
                    remote_uri,
                    definition_dict,
                    delete_remote_on_del=False,
                    allowed_upload_extension_regex=r'\.fpg|\.yaml',
                    attribute_depth_allowance=attribute_depth_allowance,
                    jsonEncoder=CustomJsonEncoder,
                    jsonDecoder=CustomJsonDecoder,
            )
            CosmicFengineRemote_cldef = definition_dict['CosmicFengineRemote']
            __COSMIC_FENGINE_REMOTE__ = CosmicFengineRemote_cldef

        return CosmicFengineRemote_cldef(
            remote_object_id=f'{host}_{pipeline_id}',
            server_uri=remote_uri
        )