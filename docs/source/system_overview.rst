F-Engine System Overview
========================

Overview
--------

The VLA F-Engine firmware is designed to run on an AlphaData ADM-PCIe-9H7 [1]_ FPGA board, and provides channelization of digital data streams from two VLA antennas.
Two different versions of the firmware exist - one for each of the two VLA digitization modes.

In the VLA's `8-bit` mode, F-engine firmware processes (for each of two dual-polarization antennas), 2 x 1GHz bands.

In the VLA's `3-bit` mode, F-engine firmware processes (for each of two dual-polarization antennas), 4 x 2GHz bands. This mode is still under development.

In both cases, the firmware channelizes the received bands into 1 MHz "coarse channels", and transmits these over 100Gb Ethernet at 8-bit (8-bit real + 8-bit imaginary) sample resolution.

The top-level specs of the F-Engine are:


.. table::
    :widths: 25 25 50

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
    | (per input)             |          | or 8 (3-bit mode)    |
    |                         |          | coarse channels      |
    +-------------------------+----------+----------------------+
    | Post-Quantization Data  | 8        | 8-bit real; 8-bit    |
    | Bitwidth                |          | imaginary            |
    +-------------------------+----------+----------------------+
    | Number of 100GbE        | 4        | 2 per antenna        |
    | outputs                 |          |                      |
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

  # Import the COSMIC F-Engine control library
  from cosmic_f import CosmicFengine

  # Instantiate a CosmicFengine instance, to communicate with
  # the F-engine pipeline for the first antenna of a board with
  # PCIe enumeration 0x3d, to be programmed with firmware 'firmware.fpg'
  f = CosmicFengine('pcie3d', fpgfile=firmware.fpg, pipeline_id=0)

  # Program a board
  f.program() # Load firmware (if it not already running)

  # Initialize all the firmware blocks
  f.initialize(read_only=False)

  # Issue a reset and synchronization pulse
  f.sync.arm_sync()
  f.sync.sw_sync()

  # Do, something, like plot autocorrelations for all polarizations/IFs
  f.autocorr.plot_all_spectra()


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

Sine-wave Injection (`sinegen`)
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

The `autocorr` block calculates, prior to any requantization, the autocorrelation of each F-engine input,
with a runtime-programmable accumulation length.

Delay / Phase Tracking (`phase_rotate`)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The phase rotation block performs delay and phase tracking, in order to fringe-stop at the phase center of an observation.

Bandpass Equalization (`eq`)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The `eq` block provides the ability to multiply spectra by a set of frequency dependent (but time-independent)
real-valued coefficients. This allows the bandpass of each F-engine input to be flattened, and the overall power levels
to be set appropriately for downstream requantization.

Test Vector Insertion (`eqtvg`)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The `eqtvg` block provides the ability to replace data streams with a runtime-programmable test pattern, which
may vary with frequency channel and input number, but is invariant over time.

Cross-Correlation (`corr`)
~~~~~~~~~~~~~~~~~~~~~~~~~~

The `corr` block provides the ability to correlate any pair of F-engine inputs (for a single antenna).
Since F-engine inputs are different IFs and polariations of a common antenna, this block is mostly useful
for debugging and verification, when used alongside the variou test vector insertion modes.

Channel Selection (`chanreorder`)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The `chanreorder` block reorders channels within a spectra. Alongside the downstream packetization block,
it can be used to dynamically define which frequency channels are transmitted from the F-engine.

Packetizer (`packetizer`)
~~~~~~~~~~~~~~~~~~~~~~~~~

The `packetizer` module inserts application headers to the F-engine data streams,
and configures the destinations to which F-engine packets are sent.

100 GbE Outputs (`eths[]`)
~~~~~~~~~~~~~~~~~~~~~~~~~~

The `eths` blocks encapsulate (multiple) 100GbE interfaces, and provide control for enabling and disabling Ethernet outputs,
and packet transmission statistics.



Output Data Format
==================

F-Engine output data comprises a continuous stream of voltage samples, encapsulated in UDP packets.
The format used is similar to that used at the ATA for 8-bit *Voltage Mode* observations, but with a larger number of time samples per packet.

Each packet contains a data payload of up to 8192 bytes, made up of 32 time samples for up to 128 frequency channels of dual-polarization data:

.. code-block:: C

  // Number of time samples per packet
  #define N_t 32
  // Number of polarizations per packet
  #define N_p 2

  struct voltage_packet {
    uint8_t version;
    uint8_t type;
    uint16_t n_chans;
    uint16_t chan;
    uint16_t feng_id
    uint64_t timestamp;
    complex8 data[n_chans, N_t, N_p] // 8-bit real + 8-bit imaginary
  };

The header entries are all encoded network-endian and should be interpretted as follows:
  - ``version``; *Firmware Major Version Number*
  - ``type``; *Packet type*: Bit [0] is 1 if the axes of data payload are in order [slowest to fastest] channel x time x polarization. This is currently the only supported mode. Bit [1] is 1 if the data payload comprises 8+8 bit complex integers. This is currently the only supported mode.
  - ``n_chans``; *Number of Channels*: Indicates the number of frequency channels present in the payload of this data packet.
  - ``chan``; *Channel number*: The index of the first channel present in this packet. For example, a channel number ``c`` implies the packet contains channels ``c`` to ``c + n_chans - 1``.
  - ``feng_id``; *Antenna ID*: A runtime configurable ID which uniquely associates a packet with a particular SNAP board.
  - ``timestamp``; *Sample number*: The index of the first time sample present in this packet. For example, a sample number :math:`s` implies the packet contains samples :math:`s` to :math:`s+15`. Sample number counts in units of spectra since the UNIX epoch, and can be referred to GPS time through knowledge of the system sampling rate and FFT length parameters (or, similarly, by knowing that each FFT channel is critically sampled at 1 MHz rate).

The data payload in each packet is determined by the number of frequency channels it contains.
The maximum is 8192 bytes.
If ``type & 2 == 1`` each byte of data should be interpretted as an 8-bit complex number (i.e. 8-bit real, 8-bit imaginary) with the most significant 8 bits of each byte representing the real part of the complex sample in signed 2's complement format, and the least significant 8 bits representing the imaginary part of the complex sample in 2's complement format.

.. [1]
    See `<https://www.alpha-data.com/product/adm-pcie-9h7>`__

