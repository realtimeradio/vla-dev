from remoteobjects.client import defineRemoteClass

class CosmicFengine():
    def __new__(cls, host, remoteobject_uri, neths=1, logger=None):
        """
        This is prioritised constructor method. If remoteobject_uri is specified, a CosmicFengineRemote class instance
        is returned instead of the expected `CosmicFengine` instance. In the latter case, the `__init__` method is
        invoked with all the same arguments.
        """
				defineRemoteClass(
						'CosmicFengine',
						remoteobject_uri,
						globals(),
						delete_remote_on_del=False,
						allowed_upload_extension_regex=r'\.fpg|\.yaml',
						attribute_depth_allowance=1,
				)
				return CosmicFengineRemote(remote_object_id=f'{host}_{pipeline_id}')