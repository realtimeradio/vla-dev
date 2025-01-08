from distutils.core import setup
import glob
import os

ver = '0.0.4'
# try:
#     import subprocess
#     ver = ver + '-' + subprocess.check_output(['git', 'describe', '--abbrev=8', '--always', '--tags']).decode().strip()
#     print('Version is: %s' % ver)
# except:
#     print('Couldn\'t get version from git. Defaulting to %s' % ver)

# Generate a __version__.py file with this version in it
here = os.path.abspath(os.path.dirname(__file__))
with open(os.path.join(here, 'src', '__version__.py'), 'w') as fh:
    fh.write('__version__ = "%s"' % ver)

setup(name='cosmic_f_remote',
      version='%s' % ver,
      description='Python libraries to control remoteobjects served COSMIC F-Engines',
      author='Ross Donnachie',
      author_email='code@radonn.co.za',
      url='https://github.com/realtimeradio/vla-dev',
      provides=['cosmic_f_remote'],
      packages=['cosmic_f_remote'],
      package_dir={'cosmic_f_remote' : 'src'},
    #   scripts=glob.glob('scripts/*.py'),
      )

if ver.endswith("dirty"):
    print("***************************************************")
    print("* You are installing from a dirty git repository. *")
    print("*          One day you will regret this.          *")
    print("*                                                 *")
    print("*      Consider cleaning up and reinstalling.     *")
    print("***************************************************")
