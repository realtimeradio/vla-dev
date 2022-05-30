from remoteobjects.client import defineRemoteClass

__COSMIC_FENGINE_REMOTE__ = None

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
            print('cosmic_f_remote: defining __COSMIC_FENGINE_REMOTE__')
            definition_dict={}
            defineRemoteClass(
                    'CosmicFengine',
                    remote_uri,
                    definition_dict,
                    delete_remote_on_del=False,
                    allowed_upload_extension_regex=r'\.fpg|\.yaml',
                    attribute_depth_allowance=attribute_depth_allowance
            )
            CosmicFengineRemote_cldef = definition_dict['CosmicFengineRemote']
            __COSMIC_FENGINE_REMOTE__ = CosmicFengineRemote_cldef

        return CosmicFengineRemote_cldef(
            remote_object_id=f'{host}_{pipeline_id}',
            server_uri=remote_uri
        )