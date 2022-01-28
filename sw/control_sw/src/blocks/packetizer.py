import numpy as np
import struct

from .block import Block

def _ip_to_int(ip):
    """
    convert an IP string (eg '10.11.10.1') to a 32-bit binary
    string, suitable for writing to an FPGA register.
    """
    octets = list(map(int, ip.split('.')))
    ip_int = (octets[0] << 24) + (octets[1] << 16) + (octets[2] << 8) + octets[3]
    return ip_int

def _int_to_ip(ip):
    """
    convert an IP integer (eg 0x0a0a0a01) to an
    IP string (eg '10.10.10.1')
    """
    sl = [] # list of parts to be joined with dots
    for i in range(4):
        sl += ["%d" % ((ip >> (8*(3-i))) & 0xff)]
    return '.'.join(sl)

class Packetizer(Block):
    """
    The packetizer block allows dynamic definition of
    packet sizes and contents.
    In firmware, it is a simple block which allows
    insertion of header entries  and EOFs at any point in the
    incoming data stream.
    It is up to the user to configure this block such that it
    behaves in a reasonable manner -- i.e.

       - Output data rate does not overflow the downstream Ethernet core
       - Packets have a reasonable size
       - EOFs and headers are correctly placed.

    :param host: CasperFpga interface for host.
    :type host: casperfpga.CasperFpga

    :param name: Name of block in Simulink hierarchy.
    :type name: str

    :param logger: Logger instance to which log messages should be emitted.
    :type logger: logging.Logger

    :param n_chans: Number of frequency channels in the correlation output.
    :type n_chans: int

    :param n_signals: Number of independent analog streams in the system.
    :type n_signals: int

    :param sample_rate_mhz: ADC sample rate in MHz. Used for data rate checks.
    :type sample_rate_mhz: float

    :param sample_width: Sample width in bytes (e.g. 4+4 bit complex = 1)
    :type sample_width: int

    :param word_width: Ethernet interface word width, in bytes
    :type word_width: int

    :param line_rate_gbps: Link speed in gigabits per seconds.
    :type line_rate_gbps: float

    :param n_time_packet: Number of time samples per packet
    :type n_time_packet: int

    :param granularity: The number of words per packetizer data block.
    :type granularity: int
    """
    def __init__(self, host, name, n_chans=4096, n_signals=64, sample_rate_mhz=200.0,
            sample_width=1, word_width=64, line_rate_gbps=100., n_time_packet=16,
            granularity=32, logger=None):
        super(Packetizer, self).__init__(host, name, logger)
        self.n_chans = n_chans
        self.n_signals = n_signals
        self.sample_rate_mhz = sample_rate_mhz
        self.sample_width = sample_width
        self.word_width = word_width
        self.line_rate_gbps = line_rate_gbps
        self.n_total_words = sample_width * n_chans * n_signals * n_time_packet // word_width
        self.n_words_per_chan = self.sample_width * 2 * n_time_packet // self.word_width
        self.full_data_rate_gbps = 8*self.sample_width * self.n_signals * self.sample_rate_mhz*1e6/2. / 1.0e9
        self.granularity = granularity

    def _populate_headers(self, headers):
        """
        Populate the voltage mode packetizer header fields.

        :param headers: A list of header dictionaries to populate
        :type headers: list

        Entry `i` of the `headers` list is written to packetizer header BRAM index `i`.
        This represents the control word associated with the `i`th data sample block
        after a sync pulse. Each data block is self.granularity words.

        Each `headers` entry should be a dictionary with the following fields:
          - `first`: Boolean, indicating this sample block is the first in a packet.
          - `valid`: Boolean, indicating this sample block contains valid data.
          - `last`: Boolean, indicating this is the last valid sample block in a packet.
          - `is_8_bit`: Boolean, indicating this packet contains 8-bit data.
          - `is_time_fastest`: Boolean, indicating this packet has a payload in
            channel [slowest] x time x polarization [fastest] order.
          - `n_chans`: Integer, indicating the number of channels in this data block's packet.
          - `chans`: list of ints, indicating the channels present in this data block. The zeroth element is the first channel in this block.
          - `feng_id`: Integer, indicating the F-Engine ID of this block's data.
            This is usually always `self.feng_id`, but may vary if one board is spoofing
            traffic from multiple boards.
          - `dest_ip` : String, the destination IP of this data block (eg "10.10.10.100")
          - `dest_port` : integer, the destination UDP port of this data block.
        """

        h_bytestr = b''
        ip_bytestr = b''
        port_bytestr = b''
        for hn, h in enumerate(headers):
            header_word = (int(h['last']) << 58) \
                        + (int(h['valid']) << 57) \
                        + (int(h['first']) << 56) \
                        + (int(h['is_8_bit']) << 49) \
                        + (int(h['is_time_fastest']) << 48) \
                        + ((h['n_chans'] & 0xffff) << 32) \
                        + ((h['chans'][0] & 0xffff) << 16) \
                        + ((h['feng_id'] & 0xffff) << 0)
            h_bytestr += struct.pack('>Q', header_word)
            ip_bytestr += struct.pack('>I', _ip_to_int(h['dest_ip']))
            port_bytestr += struct.pack('>I', h['dest_port'])

        self.write('ips', ip_bytestr)
        self.write('header', h_bytestr)
        self.write('ports', port_bytestr)

    def _read_headers(self, n_words=None):
        """
        Get the header entries from one of this board's packetizers.

        :return: headers
        :rtype: list

        Entry `i` of the `headers` list represents the contents of header BRAM index `i`.
        This represents the control word associated with the `i`th data sample block
        after a sync pulse. Each data block is self.granularity words.

        Each `headers` entry should be a dictionary with the following fields:
          - `first`: Boolean, indicating this sample block is the first in a packet.
          - `valid`: Boolean, indicating this sample block contains valid data.
          - `last`: Boolean, indicating this is the last valid sample block in a packet.
          - `is_8_bit`: Boolean, indicating this packet contains 8-bit data.
          - `is_time_fastest`: Boolean, indicating this packet has a payload in
            channel [slowest] x time x polarization [fastest] order.
          - `n_chans`: Integer, indicating the number of channels in this data block's packet.
          - `chans`: list of ints, indicating the channels present in this data block. The zeroth element is the first channel in this block.
          - `feng_id`: Integer, indicating the F-Engine ID of this block's data.
            This is usually always `self.feng_id`, but may vary if one board is spoofing
            traffic from multiple boards.
          - `dest_ip` : String, the destination IP of this data block (eg "10.10.10.100")
          - `dest_port` : Integer, the destination IP of this data block
        """

        if n_words is None:
            n_words = self.n_total_words // self.granularity
        hs_raw = self.read('header', 8*n_words)
        ips_raw = self.read('ips', 4*n_words)
        ports_raw = self.read('ports', 4*n_words)
        hs = struct.unpack('>%dQ' % n_words, hs_raw)
        ips = struct.unpack('>%dI' % n_words, ips_raw)
        ports = struct.unpack('>%dI' % n_words, ports_raw)

        headers = []
        for dn, d in enumerate(hs):
            headers += [{}]
            headers[-1]['feng_id'] = (d >> 0) & 0xffff
            headers[-1]['chans'] = [(d >> 16) & 0xffff]
            headers[-1]['n_chans'] = (d >> 32) & 0xffff
            headers[-1]['is_time_fastest'] = bool((d >> 48) & 1)
            headers[-1]['is_8_bit'] = bool((d >> 49) & 1)
            headers[-1]['first'] = bool((d >> 56) & 1)
            headers[-1]['valid'] = bool((d >> 57) & 1)
            headers[-1]['last'] = bool((d >> 58) & 1)
            headers[-1]['dest_ip'] = _int_to_ip(ips[dn])
            headers[-1]['dest_port'] = ports[dn]
        return headers

    def get_packet_info(self, n_pkt_chans, occupation=0.95, chan_block_size=8):
        """
        Get the packet boundaries for packets containing a given number of
        frequency channels.
        

        :param n_pkt_chans: The number of channels per packet.
        :type n_pkt_chans: int

        :param occupation: The maximum allowed throughput capacity of the underlying link.
            The calculation does not include application or protocol overhead,
            so must necessarily be < 1.
        :type occupation: float

        :param chan_block_size: The granularity with which we can start packets.
            I.e., packets must start on an n*`chan_block` boundary.
        :type chan_block_size: int

        :return: packet_starts, packet_payloads, channel_indices, signal_numbers

            ``packet_starts`` : list of ints
                The word indexes where packets start -- i.e., where headers should be
                written.
                For example, a value [0, 1024, 2048, ...] indicates that headers
                should be written into underlying brams at addresses 0, 1024, etc.
            ``packet_payloads`` : list of range()
                The range of indices where this packet's payload falls. Eg:
                [range(1,257), range(1025,1281), range(2049,2305), ... etc]
                These indices should be marked valid, and the last given an EOF.
            ``channel_indices`` : list of range()
                The range of channel indices this packet will send. Eg:
                [range(1,129), range(1025,1153), range(2049,2177), ... etc]
                Channels to be sent should be re-indexed so that they fall into
                these ranges.
            ``signal_numbers``: list of ints
                The signal ID (I.e., IF) of each packet.
        """
        # In this packetizer, we arrange output data as:
        # n_chans // 32 x IFs [2] x 50% duty cycle x chans [32] x n_time_packet x pol [2]
        assert n_pkt_chans == 32, "Only 32 channels per packet is supported"
        n_blocks = self.n_total_words // self.granularity
        blocks_per_packet = self.n_words_per_chan * n_pkt_chans // self.granularity
        n_packets = n_blocks // blocks_per_packet // 2 # 50% duty cycle
        assert self.n_chans % n_pkt_chans == 0
        n_chan_blocks = self.n_chans // n_pkt_chans

        packet_starts = []
        packet_payloads = []
        channel_indices = []
        signal_numbers = []
        b = 0
        for c in range(n_chan_blocks):
            for i in range(self.n_signals//2): # count in dual-pol steps
                if i % 2 == 1:
                    b += 1
                    continue # 50% duty cycle
                packet_starts += [b]
                packet_payloads += [range(b,b+blocks_per_packet)]
                channel_indices += [range(c*n_pkt_chans, (c+1)*n_pkt_chans)]
                signal_numbers += [i//2]
                b += 1

        return packet_starts, packet_payloads, channel_indices, signal_numbers
        
    def write_config(self, packet_starts, packet_payloads, channel_indices,
            antenna_indices, dest_ips, dest_ports, nchans_per_packet):
        """
        Write the packetizer configuration BRAMs with appropriate entries.

        :param packet_starts:
            Word-indices which are the first entry of a packet and should
            be populated with headers (see `get_packet_info()`)
        :type packet_starts: list of int

        :param packet_payloads:
            Word-indices which are data payloads, and should be mared as
            valid (see `get_packet_info()`)
        :type packet_payloads: list of range()s

        :param channel_indices:
            Header entries for the channel field of each packet to be sent
        :type channel_indices: list of ints

        :param antenna_indices:
            Header entries for the antenna field of each packet to be sent
        :type ant_indices: list of ints

        :param dest_ips: list of str
            IP addresses for each packet to be sent. If an IP is '0.0.0.0',
            the corresponding packet will be marked invalid.
        :type dest_ips:

        :param dest_ports:
            UDP destination ports for each packet to be sent.
        :type dest_ports: list of int

        :param nchans_per_packet: Number of frequency channels per packet sent.
        :type nchans_per_packet: list of int

        All parameters should have identical lengths.
        """
        n_packets = len(packet_starts)
        assert len(packet_payloads) == n_packets
        assert len(channel_indices) == n_packets
        assert len(antenna_indices) == n_packets
        assert len(dest_ips) == n_packets
        assert len(dest_ports) == n_packets
        assert len(nchans_per_packet) == n_packets

        n_headers = self.n_total_words // self.granularity

        # generate template headers for all invalid data
        headers = []
        for i in range(n_headers):
            headers += [{
                'first': False,
                'valid': False,
                'last': False,
                'is_8_bit': True,
                'is_time_fastest': True,
                'n_chans': 0,
                'chans': [0],
                'feng_id': 0,
                'dest_ip': '0.0.0.0',
                'dest_port': 0,
                }]

        for p in range(n_packets):
            b = packet_starts[p]
            headers[b]['first'] = True
            for j in packet_payloads[p]:
                headers[j]['valid'] = dest_ips[p] != '0.0.0.0'
                headers[j]['n_chans'] = nchans_per_packet[p]
                headers[j]['chans'] = channel_indices[p]
                headers[j]['feng_id'] = antenna_indices[p]
                headers[j]['dest_ip'] = dest_ips[p]
                headers[j]['dest_port'] = dest_ports[p]
            headers[packet_payloads[p][-1]]['last'] = True

        self._populate_headers(headers)
