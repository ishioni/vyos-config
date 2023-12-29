#!/bin/vbash

set service dhcp-server hostfile-update

set service dhcp-server global-parameters 'option space ubnt;'
set service dhcp-server global-parameters 'option ubnt.unifi-address code 1 = ip-address;'
set service dhcp-server global-parameters 'class &quot;ubnt&quot; {'
set service dhcp-server global-parameters 'match if substring (option vendor-class-identifier, 0, 4) = &quot;ubnt&quot;;'
set service dhcp-server global-parameters 'option vendor-class-identifier &quot;ubnt&quot;;'
set service dhcp-server global-parameters 'vendor-option-space ubnt;'
set service dhcp-server global-parameters '}'

# NETWORK
set service dhcp-server shared-network-name NETWORK authoritative
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 default-router '10.1.1.1'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 domain-name 'network.internal'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 domain-search 'network.internal'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 lease '86400'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 name-server '10.1.1.1'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 range 0 start '10.1.1.128'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 range 0 stop '10.1.1.250'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 subnet-parameters 'option ubnt.unifi-address 10.5.0.2;'

# NETWORK static mappings
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping bigswitch ip-address '10.1.1.10'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping bigswitch mac-address '24:5a:4c:a5:f6:e2'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping fastswitch ip-address '10.1.1.11'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping fastswitch mac-address 'ac:8b:a9:a2:bf:d4'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping downap ip-address '10.1.1.20'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping downap mac-address '78:45:58:b6:2f:f5'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping midap ip-address '10.1.1.21'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping midap mac-address '78:45:58:b3:89:0b'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping upap ip-address '10.1.1.22'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping upap mac-address 'b4:fb:e4:87:05:68'

# SERVERS
set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 default-router '10.1.2.1'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 domain-name 'servers.${SECRET_DOMAIN}'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 domain-search 'servers.${SECRET_DOMAIN}'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 name-server '10.1.2.1'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 range 0 start '10.1.2.128'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 range 0 stop '10.1.2.250'

# SERVERS static mappings

# IOT
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 default-router '10.1.3.1'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 domain-name 'iot.internal'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 domain-search 'iot.internal'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 name-server '10.1.3.1'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 start '10.1.3.128'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 stop '10.1.3.250'

# IOT static mappings

set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping homeassistant ip-address '10.1.3.2'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping homeassistant mac-address '72:26:5b:e5:f9:d9'
# ...

# IOT
set service dhcp-server shared-network-name KUBERNETES authoritative
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 default-router '10.1.4.1'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 domain-name 'kubernetes.internal'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 domain-search 'kubernetes.internal'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 lease '86400'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 name-server '10.1.4.1'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 range 0 start '10.1.4.128'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 range 0 stop '10.1.4.250'

# KUBERNETES static mappings
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 static-mapping master-0 ip-address '10.1.4.10'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 static-mapping master-0 mac-address '06:7c:87:5d:25:90'
# ...

# TRUSTED
set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 default-router '10.1.5.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 domain-name 'trusted.internal'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 domain-search 'trusted.internal'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 name-server '10.1.5.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 range 0 start '10.1.5.10'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 range 0 stop '10.1.5.128'

# LAN static mappings
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 static-mapping coreelec ip-address '10.1.5.3'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 static-mapping coreelec mac-address '10:27:f5:09:42:81'

# BRLAN
set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN subnet 192.168.2.0/24 default-router '192.168.2.1'
set service dhcp-server shared-network-name LAN subnet 192.168.2.0/24 domain-name 'lan.internal'
set service dhcp-server shared-network-name LAN subnet 192.168.2.0/24 domain-search 'lan.internal'
set service dhcp-server shared-network-name LAN subnet 192.168.2.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 192.168.2.0/24 name-server '192.168.2.1'
set service dhcp-server shared-network-name LAN subnet 192.168.2.0/24 range 0 start '192.168.2.2'
set service dhcp-server shared-network-name LAN subnet 192.168.2.0/24 range 0 stop '192.168.2.10'

# BRLAN - TEST
set service dhcp-server shared-network-name TEST authoritative
set service dhcp-server shared-network-name TEST subnet 192.168.4.0/24 default-router '192.168.4.1'
set service dhcp-server shared-network-name TEST subnet 192.168.4.0/24 domain-name 'brlan.internal'
set service dhcp-server shared-network-name TEST subnet 192.168.4.0/24 domain-search 'brlan.internal'
set service dhcp-server shared-network-name TEST subnet 192.168.4.0/24 lease '86400'
set service dhcp-server shared-network-name TEST subnet 192.168.4.0/24 name-server '192.168.4.1'
set service dhcp-server shared-network-name TEST subnet 192.168.4.0/24 range 0 start '192.168.4.2'
set service dhcp-server shared-network-name TEST subnet 192.168.4.0/24 range 0 stop '192.168.4.10'