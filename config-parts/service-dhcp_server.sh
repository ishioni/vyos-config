#!/bin/vbash

set service dhcp-server hostfile-update
set service dhcp-server host-decl-name 

# NETWORK
set service dhcp-server shared-network-name NETWORK authoritative
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 default-router '10.1.1.1'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 domain-name network.${SECRET_DOMAIN}
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 domain-search network.${SECRET_DOMAIN}
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
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 domain-name servers.${SECRET_DOMAIN}
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 domain-search servers.${SECRET_DOMAIN}
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 name-server '10.1.2.1'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 range 0 start '10.1.2.128'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 range 0 stop '10.1.2.250'

# SERVERS static mappings

set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping shell ip-address '10.1.2.4'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping shell mac-address 'be:32:83:a0:de:8b'

# IOT
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 default-router '10.1.3.1'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 domain-name iot.${SECRET_DOMAIN}
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 domain-search iot.${SECRET_DOMAIN}
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 name-server '10.1.3.1'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 start '10.1.3.128'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 stop '10.1.3.250'

# IOT static mappings

set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping homeassistant ip-address '10.1.3.3'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping homeassistant mac-address '72:26:5b:e5:f9:d9'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping rxv679 ip-address '10.1.3.4'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping rxv679 mac-address '8c:8b:83:c8:95:19'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping brother ip-address '10.1.3.5'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping brother mac-address '90:0f:0c:d8:a1:e7'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping thesucc ip-address '10.1.3.10'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping thesucc mac-address '78:11:dc:82:bd:1f'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping lgoled ip-address '10.1.3.12'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping lgoled mac-address '74:40:be:fa:a8:40'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping espzigbee ip-address '10.1.3.13'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping espzigbee mac-address '34:94:54:23:cc:83'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping ac-downstairs ip-address '10.1.3.15'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping ac-downstairs mac-address '50:2c:c6:9b:a6:83'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping camera-kids ip-address '10.1.3.16'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping camera-kids mac-address '8c:85:80:d9:dd:26'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping camera-bedroom ip-address '10.1.3.17'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping camera-bedroom mac-address '04:17:b6:1c:3c:a3'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping ac-kids ip-address '10.1.3.18'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping ac-kids mac-address '50:2c:c6:9b:a6:8d'

# KUBERNETES
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
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 static-mapping master-1 ip-address '10.1.4.11'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 static-mapping master-1 mac-address '26:e4:d6:c6:ed:5d'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 static-mapping master-2 ip-address '10.1.4.12'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 static-mapping master-2 mac-address '4e:15:3e:e4:7b:f3'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 static-mapping worker-0 ip-address '10.1.4.20'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 static-mapping worker-0 mac-address '56:16:fd:96:ea:94'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 static-mapping worker-1 ip-address '10.1.4.21'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 static-mapping worker-1 mac-address 'ba:7b:01:68:5a:0e'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 static-mapping worker-2 ip-address '10.1.4.22'
set service dhcp-server shared-network-name KUBERNETES subnet 10.1.4.0/24 static-mapping worker-2 mac-address '06:ca:3f:73:46:6e'

# ...

# TRUSTED
set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 default-router '10.1.5.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 domain-name trusted.${SECRET_DOMAIN}
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 domain-search trusted.${SECRET_DOMAIN}
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 name-server '10.1.5.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 range 0 start '10.1.5.10'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 range 0 stop '10.1.5.128'

# LAN static mappings
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 static-mapping coreelec ip-address '10.1.5.3'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 static-mapping coreelec mac-address '10:27:f5:09:42:81'
