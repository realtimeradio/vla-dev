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

Pre-requisites
--------------

In order to program an ADM-PCIe-9H7 board via the ``CosmicFengine`` interface,
the board should first have had its flash programmed with a compatible
"template" image.
This can be accomplished using over JTAG using the ADM-PCIe-9H7 board's USB connection.
{rogramming the FPGA board can cause the PCIe interface of the server in which the FPGA
card is installed to become unstable, so it is strongly recommended that programming
is not conducted from the FPGA host server.
Templates binaries are available in this repository in the ``firmware/pr_templates`` directory.
The appropriate binary should be selected based on the DSP design's configuration.


``CosmicFengine`` Python Interface
----------------------------------

The ``CosmicFengine`` class can be instantiated and used to control
a single ADM-PCIe-9H7 board running COSMIC's F-Engine firmware. An example is below:


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
the DTS->FPGA data link and monitoring of DTS status.

.. autoclass:: cosmic_f.blocks.dts.Dts
  :no-show-inheritance:
  :members:

Input Control
+++++++++++++

The ``Input`` control interface allows monitoring
of wideband input power levels and bit statistics,
as well as switching on of digital test sources.

.. autoclass:: cosmic_f.blocks.input.Input
  :no-show-inheritance:
  :members:

Noise Generator Control
+++++++++++++++++++++++

The ``NoiseGen`` control interface allows
configuration of correlated and uncorrelated
digital noise streams.

.. autoclass:: cosmic_f.blocks.noisegen.NoiseGen
  :no-show-inheritance:
  :members:

Sine Generator Control
++++++++++++++++++++++

The ``SineGen`` control interface allows injection of
sinusoid signals into the digital processing stream.

.. autoclass:: cosmic_f.blocks.sinegen.SineGen
  :no-show-inheritance:
  :members:

Delay Control
+++++++++++++

The ``Delay`` control interface allows configuration of
integer ADC-sample delays.

.. autoclass:: cosmic_f.blocks.delay.Delay
  :no-show-inheritance:
  :members:

LO Control
++++++++++

The ``Lo`` control interface allows configuration of the
digital mixer upstream of the DSP pipeline's filterbank.

.. autoclass:: cosmic_f.blocks.lo.Lo
  :no-show-inheritance:
  :members:


PFB Control
+++++++++++

The ``Pfb`` control interface allows control of digital scaling,
and monitoring of overflow events in the channelizer module.

.. autoclass:: cosmic_f.blocks.pfb.Pfb
  :no-show-inheritance:
  :members:


Phase Rotate
++++++++++++

The ``PhaseRotate`` control interface allows high-time-resolution
control of sub-ADC-sample time delays and phase rotations. 

.. autoclass:: cosmic_f.blocks.phaserotate.PhaseRotate
  :no-show-inheritance:
  :members:

Auto-correlation Control
++++++++++++++++++++++++

The ``AutoCorr`` control interface allows readout of post-channelizer
signal power spectra.

.. autoclass:: cosmic_f.blocks.autocorr.AutoCorr
  :no-show-inheritance:
  :members:


Correlation Control
+++++++++++++++++++

The ``Corr`` control interface allows readout of post-requantization
auto- and cross-correlation spectra.

.. autoclass:: cosmic_f.blocks.corr.Corr
  :no-show-inheritance:
  :members:

Post-FFT Test Vector Control
++++++++++++++++++++++++++++

The ``EqTvg`` control interface allows injection of customizable
test patterns, downstream of the DSP pipeline's channelizer.

.. autoclass:: cosmic_f.blocks.eqtvg.EqTvg
  :no-show-inheritance:
  :members:

Equalization Control
++++++++++++++++++++

The ``Eq`` control interface allows configuration of multiplicative
equalization coefficients, designed to compensate for power differences
between antennas and across an IF band.

.. autoclass:: cosmic_f.blocks.eq.Eq
  :no-show-inheritance:
  :members:

Channel Selection Control
+++++++++++++++++++++++++

The ``ChanReorder`` interface allows configuration of the order in
which frequency channels are output from the DSP pipeline. In
conjunction with the ``Packetizer`` controller, this block
allows frequency channels to be flexibly assigned to different
UDP/IP destinations.

.. autoclass:: cosmic_f.blocks.chanreorder.ChanReorder
  :no-show-inheritance:
  :members:

Packetization Control
+++++++++++++++++++++

The ``Packetizer`` control interface allows configuration of UDP
output packet sizes and headers.

.. autoclass:: cosmic_f.blocks.packetizer.Packetizer
  :no-show-inheritance:
  :members:

Ethernet Output Control
+++++++++++++++++++++++

The ``Eth`` control interface allows control and monitoring of
a single 100 Gb Ethernet interface in the DSP pipeline.

.. autoclass:: cosmic_f.blocks.eth.Eth
  :no-show-inheritance:
  :members:
