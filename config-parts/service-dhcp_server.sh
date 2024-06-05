#!/bin/vbash

# DDNS
set service dhcp-server dynamic-dns-update
set service dhcp-server host-decl-name
set service dhcp-server global-parameters "key dhcpd { algorithm hmac-md5; secret ${SECRET_BIND_DHCPD_KEY}; };"
set service dhcp-server global-parameters 'update-optimization off;'
set service dhcp-server global-parameters 'update-conflict-detection off;'
set service dhcp-server global-parameters 'allow client-updates;'
set service dhcp-server global-parameters 'update-static-leases on;'

# NETWORK
set service dhcp-server shared-network-name NETWORK authoritative
set service dhcp-server shared-network-name NETWORK shared-network-parameters 'zone ishioni.casa. { primary 10.5.0.2; key dhcpd; }'
set service dhcp-server shared-network-name NETWORK shared-network-parameters 'zone 10.in-addr.arpa. { primary 10.5.0.2; key dhcpd; }'
set service dhcp-server shared-network-name NETWORK shared-network-parameters 'ddns-domainname &quot;ishioni.casa.&quot;;'
set service dhcp-server shared-network-name NETWORK shared-network-parameters 'ddns-rev-domainname &quot;in-addr.arpa.&quot;;'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 default-router '10.1.1.1'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 domain-name 'ishioni.casa'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 domain-search 'ishioni.casa'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 lease '86400'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 name-server '10.1.1.1'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 range 0 start '10.1.1.128'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 range 0 stop '10.1.1.250'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 subnet-parameters 'option ubnt.unifi-controller 10.5.0.10;'

# NETWORK static mappings
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping eswitch ip-address '10.1.1.10'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping eswitch mac-address 'f4:e2:c6:dd:aa:b9'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping downap ip-address '10.1.1.20'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping downap mac-address '78:45:58:b6:2f:f5'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping midap ip-address '10.1.1.21'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping midap mac-address '78:45:58:b3:89:0b'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping upap ip-address '10.1.1.22'
set service dhcp-server shared-network-name NETWORK subnet 10.1.1.0/24 static-mapping upap mac-address 'f4:e2:c6:e9:8f:29'

# SERVERS
set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS shared-network-parameters 'zone ishioni.casa. { primary 10.5.0.2; key dhcpd; }'
set service dhcp-server shared-network-name SERVERS shared-network-parameters 'zone 10.in-addr.arpa. { primary 10.5.0.2; key dhcpd; }'
set service dhcp-server shared-network-name SERVERS shared-network-parameters 'ddns-domainname &quot;ishioni.casa.&quot;;'
set service dhcp-server shared-network-name SERVERS shared-network-parameters 'ddns-rev-domainname &quot;in-addr.arpa.&quot;;'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 default-router '10.1.2.1'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 domain-name 'ishioni.casa'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 domain-search 'ishioni.casa'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 name-server '10.1.2.1'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 range 0 start '10.1.2.128'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 range 0 stop '10.1.2.250'

# SERVERS static mappings

set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping shell ip-address '10.1.2.66'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping shell mac-address 'be:32:83:a0:de:8b'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping quadrant ip-address '10.1.2.2'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping quadrant mac-address 'bc:24:11:68:f0:29'

# Talos
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping talos-master-0 ip-address '10.1.2.30'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping talos-master-0 mac-address 'bc:24:11:c4:1a:ac'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping talos-master-1 ip-address '10.1.2.31'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping talos-master-1 mac-address 'bc:24:11:53:b5:3b'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping talos-master-2 ip-address '10.1.2.32'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping talos-master-2 mac-address 'bc:24:11:ca:1e:77'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping talos-worker-0 ip-address '10.1.2.40'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping talos-worker-0 mac-address 'bc:24:11:ba:e4:28'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping talos-worker-1 ip-address '10.1.2.41'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping talos-worker-1 mac-address 'bc:24:11:25:9b:1f'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping talos-worker-2 ip-address '10.1.2.42'
set service dhcp-server shared-network-name SERVERS subnet 10.1.2.0/24 static-mapping talos-worker-2 mac-address 'bc:24:11:23:42:56'

# IOT
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT shared-network-parameters 'zone ishioni.casa. { primary 10.5.0.2; key dhcpd; }'
set service dhcp-server shared-network-name IOT shared-network-parameters 'zone 10.in-addr.arpa. { primary 10.5.0.2; key dhcpd; }'
set service dhcp-server shared-network-name IOT shared-network-parameters 'ddns-domainname &quot;ishioni.casa.&quot;;'
set service dhcp-server shared-network-name IOT shared-network-parameters 'ddns-rev-domainname &quot;in-addr.arpa.&quot;;'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 default-router '10.1.3.1'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 domain-name 'ishioni.casa'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 domain-search 'ishioni.casa'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 name-server '10.1.3.1'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 start '10.1.3.32'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 range 0 stop '10.1.3.250'

# IOT static mappings

set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping homeassistant ip-address '10.1.3.3'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping homeassistant mac-address '72:26:5b:e5:f9:d9'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping espzigbee ip-address '10.1.3.4'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping espzigbee mac-address '34:94:54:23:cc:83'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping rxv679 ip-address '10.1.3.5'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping rxv679 mac-address '8c:8b:83:c8:95:19'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping lgoled ip-address '10.1.3.6'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping lgoled mac-address '74:40:be:fa:a8:40'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping camera-kids mac-address '8c:85:80:d9:dd:26'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping camera-kids static-mapping-parameters 'ddns-hostname camera-kids;'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping camera-bedroom mac-address '04:17:b6:1c:3c:a3'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping camera-bedroom static-mapping-parameters 'ddns-hostname camera-bedroom;'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping thesucc ip-address '10.1.3.10'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping thesucc mac-address '5c:c5:63:ea:b4:59'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping thesucc static-mapping-parameters 'ddns-hostname thesucc;'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping serverplug mac-address '80:64:6f:d6:96:3c'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping serverplug static-mapping-parameters 'ddns-hostname serverplug;'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping dishwasherplug mac-address 'd4:8a:fc:46:c0:9c'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping dishwasherplug static-mapping-parameters 'ddns-hostname dishwasherplug;'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping dryerplug mac-address 'c8:2e:18:08:85:b4'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping dryerplug static-mapping-parameters 'ddns-hostname dryerplug;'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping fridgeplug mac-address 'e4:65:b8:b0:a8:cc'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping fridgeplug static-mapping-parameters 'ddns-hostname fridgeplug;'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping powermeter mac-address 'd8:bf:c0:1a:7c:6b'
set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping powermeter static-mapping-parameters 'ddns-hostname powermeter;'

# TRUSTED
set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED shared-network-parameters 'zone ishioni.casa. { primary 10.5.0.2; key dhcpd; }'
set service dhcp-server shared-network-name TRUSTED shared-network-parameters 'zone 10.in-addr.arpa. { primary 10.5.0.2; key dhcpd; }'
set service dhcp-server shared-network-name TRUSTED shared-network-parameters 'ddns-domainname &quot;ishioni.casa.&quot;;'
set service dhcp-server shared-network-name TRUSTED shared-network-parameters 'ddns-rev-domainname &quot;in-addr.arpa.&quot;;'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 default-router '10.1.5.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 domain-name 'ishioni.casa'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 domain-search 'ishioni.casa'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 name-server '10.1.5.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 range 0 start '10.1.5.10'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 range 0 stop '10.1.5.128'

# LAN static mappings
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 static-mapping coreelec ip-address '10.1.5.3'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.5.0/24 static-mapping coreelec mac-address '10:27:f5:09:42:81'
