#!/bin/vbash

set service dhcp-server hostfile-update

# NETWORK
set service dhcp-server shared-network-name NETWORK authoritative
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 default-router '10.1.0.1'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 domain-name 'network.internal'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 domain-search 'network.internal'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 lease '86400'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 name-server '10.1.0.1'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 range 0 start '10.1.0.32'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 range 0 stop '10.1.0.63'

# NETWORK static mappings
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 static-mapping bigswitch ip-address '10.1.0.10'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 static-mapping bigswitch mac-address '24:5a:4c:a5:f6:e2'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 static-mapping fastswitch ip-address '10.1.0.11'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 static-mapping fastswitch mac-address 'ac:8b:a9:a2:bf:d4'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 static-mapping downap ip-address '10.1.0.20'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 static-mapping downap mac-address '78:45:58:b6:2f:f5'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 static-mapping midap ip-address '10.1.0.21'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 static-mapping midap mac-address '78:45:58:b3:89:0b'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 static-mapping upap ip-address '10.1.0.22'
set service dhcp-server shared-network-name NETWORK subnet 10.1.0.0/24 static-mapping upap mac-address 'b4:fb:e4:87:05:68'