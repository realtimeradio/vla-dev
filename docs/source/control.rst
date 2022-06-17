.. _control-interface:

Control Interface
=================

Overview
--------

A Python class ``CosmicFengine`` is provided to encapsulate control
of individual blocks in the firmware DSP pipeline.
The structure of the software interface aims to mirror the hierarchy of
the firmware modules, through the use of multiple ``Block`` class instances,
each of which encapsulates control of a single module in the firmware pipeline.

In testing, and interactive debugging, the ``CosmicFengine`` class provides
an easy way to probe board status for a ADM-PCIe-9H7 board on the local network.


``CosmicFengine`` Python Interface
----------------------------------

The ``CosmicFengine`` class can be instantiated and used to control
a single ADM-PCIe-9H7 board running LWA's F-Engine firmware. An example is below:


.. code-block:: python

  # Import the ADM-PCIe-9H7 F-Engine library
  from cosmic_f import CosmicFengine

  # Instantiate a CosmicFengine instance, to communicate with
  # the F-engine pipeline for the first antenna of a board with
  # PCIe enumeration 0x3d, to be programmed with firmware 'firmware.fpg'
  f = CosmicFengine('pcie3d', fpgfile=firmware.fpg, pipeline_id=0)

  # Program a board
  f.program() # Load firmware (if it not already running)

  # Initialize all the firmware blocks
  f.initialize(read_only=False)

  # Blocks are available as items in the CosmicFengine `blocks`
  # dictionary, or can be accessed directly as attributes
  # of the CosmicFengine.

  # Print available block names
  print(sorted(f.blocks.keys()))
  # Returns:
  # ['dts', 'autocorr', 'corr', 'delay', 'eq', 'eq_tvg', 'eth',
  # 'fpga', 'input', 'noise', 'packetizer', 'pfb', 'reorder', 'sync']

  # Grab some correlation data from the two pols of the first IF
  corr_data = f.corr.get_new_corr(0, 1)
  # ...

Details of the methods provided by individual blocks are given in the next
section.


Top-Level Control
+++++++++++++++++

The Top-level ``CosmicFengine`` instance can be used to perform high-level
control of the firmware, such as programming and de-programming FPGA boards.
It can also be used to apply configurations which affect multiple firmware
subsystems, such as configuring channel selection and packet destination.

Finally, a ``CosmicFengine`` instance can be used to initialize, or get status
from, all underlying firmware modules.

.. autoclass:: cosmic_f.cosmic_fengine.CosmicFengine
  :no-show-inheritance:
  :members:

.. _control-fpga:

FPGA Control
++++++++++++

The ``FPGA`` control interface allows gathering of FPGA statistics such
as temperature and voltage levels. Its methods are functional regardless of
whether the FPGA is programmed with an LWA F-Engine firmware design.

.. autoclass:: cosmic_f.blocks.fpga.Fpga
  :no-show-inheritance:
  :members:

Timing Control
++++++++++++++

The ``Sync`` control interface provides an interface to configure and monitor the
multi-ADM-PCIe-9H7 timing distribution system.

.. autoclass:: cosmic_f.blocks.sync.Sync
  :no-show-inheritance:
  :members:

.. _control-adc:

DTS Control
+++++++++++

The ``Dts`` control interface allows link training of
the DTS->FPGA data link.

.. autoclass:: cosmic_f.blocks.dts.Dts
  :no-show-inheritance:
  :members:

Input Control
+++++++++++++

.. autoclass:: cosmic_f.blocks.input.Input
  :no-show-inheritance:
  :members:

Noise Generator Control
+++++++++++++++++++++++

.. autoclass:: cosmic_f.blocks.noisegen.NoiseGen
  :no-show-inheritance:
  :members:

Sine Generator Control
++++++++++++++++++++++

.. autoclass:: cosmic_f.blocks.sinegen.SineGen
  :no-show-inheritance:
  :members:

Delay Control
+++++++++++++

.. autoclass:: cosmic_f.blocks.delay.Delay
  :no-show-inheritance:
  :members:


PFB Control
+++++++++++

.. autoclass:: cosmic_f.blocks.pfb.Pfb
  :no-show-inheritance:
  :members:


Auto-correlation Control
++++++++++++++++++++++++

.. autoclass:: cosmic_f.blocks.autocorr.AutoCorr
  :no-show-inheritance:
  :members:


Correlation Control
+++++++++++++++++++

.. autoclass:: cosmic_f.blocks.corr.Corr
  :no-show-inheritance:
  :members:

Post-FFT Test Vector Control
++++++++++++++++++++++++++++

.. autoclass:: cosmic_f.blocks.eqtvg.EqTvg
  :no-show-inheritance:
  :members:

Equalization Control
++++++++++++++++++++

.. autoclass:: cosmic_f.blocks.eq.Eq
  :no-show-inheritance:
  :members:

Channel Selection Control
+++++++++++++++++++++++++

.. autoclass:: cosmic_f.blocks.chanreorder.ChanReorder
  :no-show-inheritance:
  :members:

Packetization Control
+++++++++++++++++++++

.. autoclass:: cosmic_f.blocks.packetizer.Packetizer
  :no-show-inheritance:
  :members:

Ethernet Output Control
+++++++++++++++++++++++

.. autoclass:: cosmic_f.blocks.eth.Eth
  :no-show-inheritance:
  :members:
