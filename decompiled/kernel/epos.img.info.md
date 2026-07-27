# Kernel image analysis: epos.img

- File size: 3360664 bytes
- SHA256: 4c4fc3923b6b9e7f1f5b6f4652ffb9ed737ccf0a80d2088b0d6fc67c14e55b41
- First 4 bytes: ` 6f 00 00 40` (RISC-V `j` jump instruction)
- Embedded markers: OpenSBI + CHKv1.0 header (see below)

## Header hexdump (first 128 bytes)
```
000000 6f 00 00 40 6f 70 65 6e 73 62 69 00 00 00 00 00  >o..@opensbi.....<
000010 00 00 00 00 00 00 00 00 00 00 00 00 43 48 4b 76  >............CHKv<
000020 31 2e 30 00 00 00 00 00 00 00 00 00 00 00 00 40  >1.0............@<
000030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  >................<
*
000080
```

## Notable strings
```
allwinner,sunxi-tv
Allwinner Vin
[AWLINK_INF] awlink version %s
Building GO Negotiation Confirm
Building GO Negotiation Response
Building PD Request based on P2PS config method 0x%x status %d --> req_config_methods 0x%x
	build: %s
 cap.version=0x%08x
cst226_get_version
did not use EAPOL-Key descriptor version 0 as required for AKM-defined cases
DI_IOC_GET_VERSION
dot11RSNAConfigVersion=%d
dot11RSNAStatsVersion=1
dot1xAuthLastEapolFrameVersion=%u
dot1xPaePortProtocolVersion=%d
dot1xSuppLastEapolFrameVersion=%u
 driver version %s init ok.
eapol_version
ekernel/components/thirdparty/net/rt-thread/lwip/src/api/api_lib.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/api/api_msg.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/api/netbuf.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/api/sockets.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/api/tcpip.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/apps/http/httpd.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/apps/lwiperf/lwiperf.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/dns.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/inet_chksum.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/ipv4/autoip.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/ipv4/dhcp.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/ipv4/etharp.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/ipv4/icmp.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/ipv4/igmp.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/ipv4/ip4_addr.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/ipv4/ip4.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/ipv4/ip4_frag.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/ipv6/icmp6.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/ipv6/ip6.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/ipv6/ip6_frag.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/ipv6/nd6.c
ekernel/components/thirdparty/net/rt-thread/lwip/src/core/mem.c
```
