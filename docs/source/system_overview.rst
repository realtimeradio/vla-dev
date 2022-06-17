F-Engine System Overview
========================

Overview
--------

The VLA F-Engine firmware is designed to run on an AlphaData ADM-PCIe-9H7 [1]_ FPGA board, and provides channelization of digital data streams from two VLA antennas.
Two different versions of the firmware exist - one for each of the two VLA digitization modes.

In the VLA's `3-bit` mode, F-engine firmware processes (for each of two dual-polarization antennas), 4x2GHz bands.

In the VLA's `8-bit` mode, F-engine firmware processes (for each of two dual-polarization antennas), 2x1GHz bands.

In both cases, the firmware channelizes the received bands into 1 MHz "coarse channels", and transmits these over 100Gb Ethernet at 8-bit (8-bit real + 8-bit imaginary) sample resolution.

The top-level specs of the F-Engine are:

+-------------------------+----------+----------------------+
| Parameter               | Value    | Notes                |
+=========================+==========+======================+
| Number of antennas      | 2        |                      |
| processed per firmware  |          |                      |
| instance                |          |                      |
+-------------------------+----------+----------------------+
| Number of inputs per    | 4 (VLA   | Dual-polarization x  |
| antenna                 | 8-bit    | 2 IFs (8-bit mode);  |
|                         | mode); 8 | 4 IFs (3-bit mode)   |
|                         | (VLA     |                      |
|                         | 3-bit    |                      |
|                         | mode)    |                      |
+-------------------------+----------+----------------------+
| Sampling rate           | 2.048GSa | VLA digitization     |
|                         | /s       | standards            |
|                         | (8-bit   |                      |
|                         | mode);   |                      |
|                         | 4.096    |                      |
|                         | GSa/s    |                      |
|                         | (3-bit   |                      |
|                         | mode)    |                      |
+-------------------------+----------+----------------------+
| Test inputs             | Noise;   | Firmware contains 2  |
|                         | zeros;   | independent gaussian |
|                         | additive | noise generators.    |
|                         | sine-    | Any of the input     |
|                         | waves    | data streams may be  |
|                         |          | replaced with any of |
|                         |          | these digital noise  |
|                         |          | sources, or zeros.   |
|                         |          | User-programmable    |
|                         |          | sine-waves may be    |
|                         |          | added to this data   |
|                         |          | stream               |
+-------------------------+----------+----------------------+
| Delay compensation      | <256k    | Programmable per-    |
|                         | samples  | input. Maximum 256   |
|                         | (8-bit   | useconds in all      |
|                         | mode);   | modes (approx 38km   |
|                         | <512k    | free-space light     |
|                         | samples  | travel)              |
|                         | (3-bit   |                      |
|                         | mode)    |                      |
+-------------------------+----------+----------------------+
| Polyphase Filter Bank   | 1024     | 1 MHz coarse channel |
| Channels                | (8-bit   | resolution in all    |
|                         | mode);   | modes. FFTs are      |
|                         | 2048     | implemented as       |
|                         | (3-bit   | complex transforms   |
|                         | mode)    | with twice as many   |
|                         |          | points as channels   |
|                         |          | output.              |
+-------------------------+----------+----------------------+
| Polyphase Filter Bank   | Hamming; |                      |
| Window                  | 4-tap    |                      |
+-------------------------+----------+----------------------+
| Polyphase Filter Bank   | 8 bit    | Sample growth occurs |
| Input Bitwidth          | (3-bit   | during LO offset     |
|                         | mode);   | removal              |
|                         | 16bit    |                      |
|                         | (8-bit   |                      |
|                         | mode)    |                      |
+-------------------------+----------+----------------------+
| FFT Coefficient Width   | 18 bits  |                      |
+-------------------------+----------+----------------------+
| FFT Data Path Width     | 18 bits  |                      |
+-------------------------+----------+----------------------+
| Post-FFT Scaling        | 20       |                      |
| Coefficient Width       |          |                      |
+-------------------------+----------+----------------------+
| Post-FFT Scaling        | 8        |                      |
| Coefficient Binary      |          |                      |
| Point                   |          |                      |
+-------------------------+----------+----------------------+
| Number of Post-FFT      | 256      | Coefficients shared  |
| Scaling Coefficients    |          | over 4 (8-bit mode)  |
| (per input) |           |          | or 8 (3-bit mode)    |
|                         |          | coarse channels      |
+-------------------------+----------+----------------------+
| Post-Quantization Data  | 8        | 8-bit real; 8-bit    |
| Bitwidth                |          | imaginary            |
+-------------------------+----------+----------------------+

The Simulink block diagram of the dual-antenna F-engine firmware which runs on an ADM-PCIe-9H7 FPGA board is shown in :numref:`feng_firmware_top`.
The block diagram showing the DSP elements of a single antenna pipeline is shown in :numref:`feng_firmware_pipeline`.

.. figure:: _static/figures/feng_firmware_top-annotated-crop.pdf
    :align: center
    :name: feng_firmware_top

    F-Engine top-level Simulink diagram.

.. figure:: _static/figures/feng_firmware_pipeline-annotated-crop.pdf
    :align: center
    :name: feng_firmware_pipeline

    Simulink diagram for a single antenna F-engine pipeline.

Initialization
++++++++++++++

The functionality of individual blocks is described below.
However, in order to simply get the firmware into a basic working state the following process should be followed:

  1. Program the FPGA
  2. Initialize all blocks in the system
  3. Trigger master reset and timing synchronization event.

In a multi-board system, the process of synchronizing a board can be relatively involved.
For testing purposes, using single board, a simple software reset can be used in place of a hardware timing signal to perform an artificial synchronization.

The following commands bring the F-engine firmware into a functional state, suitable for testing.
See :numref:`control-interface` for a full software API description

.. code-block:: python

  # Import the SNAP2 F-Engine library
  from cosmic_f import cosmic_fengine

  # Instantiate a CosmicFengine instance to a board with
  # hostname 'snap2-rev2-11'
  f = cosmic_fengine.CosmicFengine('snap2-rev2-11')

  # Program a board
  f.program() # Load whatever firmware is in flash
  # Wait 30 seconds for the board to reboot...

  # Initialize all the firmware blocks
  f.initialize(read_only=False)

  # Issue a reset and synchronization pulse
  f.sync.arm_sync()
  f.sync.sw_sync()


Block Descriptions
++++++++++++++++++

Each block in the firmware design can be controlled using an API described in :numref:`control-interface`.

DTS (`dts`)
~~~~~~~~~~~

The DTS block provides an interface to the VLA DTS (Data Transmission System).
It receives streaming DTS data from a VLA antenna on 12 parallel 10.24 Gb/s links,
and decodes these streams into a time series of ADC samples.

Timestamp Generation (`sync`)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The timestamp generation block, manages the synchronization of multiple boards.
Software control, alongside pulses embedded in the DTS data streams allow multiple boards
to lock to a common time origin. This is vital for combining data streams from antennas
which are processed by different FPGA boards.

Noise Generators (`noise`)
~~~~~~~~~~~~~~~~~~~~~~~~~~

The Noise Generation block provides multiple white noise streams. These can be used
to emulate antenna signals which are either perfectly correlated or perfectly uncorrelated.
Designed for testing and verification, replacing DTS signals with artificial noise provides
a useful ability to check the functionality of downstream delay / correlation systems.

Input Selection (`input`)
~~~~~~~~~~~~~~~~~~~~~~~~~

The input block provides bit statistics (mean, RMS, histograms) for F-engine inputs.
It also contains a multiplexor which allows F-engine inputs to be replaces with
either zeros, or a signal from an upstream `noise` block.

Sine-wave Injection (`sine_tvg`)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Sine-wave injection block allows a software-defined sine wave to be added to
a data stream. This allows testing of the downstream LO-offset removal scheme, as well as verification
of frequency channel labelling.

Delay Compensation (`delay`)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The delay block allows runtime-programmable delays to be inserted into a data stream.
These can be used to compensate for cable delays in the upstream system, as well as array geometry
when phasing to an astronomical source.

LO-offset Removal (`lo`)
~~~~~~~~~~~~~~~~~~~~~~~~

The LO block multiplies F-engine signals by a runtime-programmable LO, to compensate
for the frequency offsets in the analog LOs used at the VLA antennas.

PFB (`pfb`)
~~~~~~~~~~~

The PFB implements a 1 MHz channelizer, slicing the wideband DTS inputs into multiple frequency channels.

Autocorrelation (`autocorr`)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~




Output Data Format
==================

To be documented


.. [1]
    See `<https://www.alpha-data.com/product/adm-pcie-9h7>`__

