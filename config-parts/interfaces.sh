#!/bin/vbash

# Interface definitions
set interfaces ethernet eth0 description 'POE'
set interfaces ethernet eth0 hw-id '00:f0:da:ef:0a:d8'
set interfaces ethernet eth1 description '2.5GbE'
set interfaces ethernet eth1 hw-id '00:f0:da:ef:0a:d5'
set interfaces ethernet eth2 description '2.5GbE'
set interfaces ethernet eth2 hw-id '00:f0:da:ef:0a:d4'
set interfaces ethernet eth3 hw-id '00:f0:da:ef:0a:d7'
set interfaces ethernet eth4 hw-id '00:f0:da:ef:0a:d6'
set interfaces ethernet eth5 description 'SFP1'
set interfaces ethernet eth5 hw-id '50:6b:4b:0c:1d:d9'
set interfaces ethernet eth6 description 'SFP2'
set interfaces ethernet eth6 hw-id '50:6b:4b:0c:1d:d8'

# WAN
set interfaces ethernet eth0 address dhcp

# Not until switchover
# set interfaces ethernet eth0 vif 35 descriptioniption 'Internet'

# set interfaces pppoe pppoe0 description 'WAN - Fiber'
# set interfaces pppoe pppoe0 source-interface 'eth0.35'
# set interfaces pppoe pppoe0 authentication user "${SECRET_ISP_AUTH_USER}"
# set interfaces pppoe pppoe0 authentication password "${SECRET_ISP_AUTH_PASSWORD}"

# BRIDGE
set interfaces bridge br0 description 'NETWORK'
set interfaces bridge br0 address '10.1.1.1/24'
set interfaces bridge br0 'enable-vlan'
set interfaces bridge br0 member interface eth4 native-vlan '1'
set interfaces bridge br0 member interface eth4 allowed-vlan '1-100'
set interfaces bridge br0 member interface eth5 native-vlan '1'
set interfaces bridge br0 member interface eth5 allowed-vlan '1-100'
set interfaces bridge br0 member interface eth6 native-vlan '1'
set interfaces bridge br0 member interface eth6 allowed-vlan '1-100'
set interfaces bridge br0 'stp'
set interfaces bridge br0 forwarding-delay '5'
set interfaces bridge br0 igmp 'snooping'

# LAN
set interfaces bridge br0 vif 2 address '10.1.2.1/24'
set interfaces bridge br0 vif 2 description 'SERVERS'
set interfaces bridge br0 vif 3 address '10.1.3.1/24'
set interfaces bridge br0 vif 3 description 'IOT'
# set interfaces bridge br0 vif 4 address '10.1.4.1/24'
# set interfaces bridge br0 vif 4 description 'KUBERNETES'
set interfaces bridge br0 vif 5 address '10.1.5.1/24'
set interfaces bridge br0 vif 5 description 'TRUSTED'

set interfaces wireguard wg0 address '10.254.254.1.1/24'
set interfaces wireguard wg0 description 'WIREGUARD'
set interfaces wireguard wg0 private-key "${SECRET_WIREGUARD_PRIVATE_KEY}"
set interfaces wireguard wg0 port '51820'
set interfaces wireguard wg0 mtu '1420'
set interfaces wireguard wg0 ip adjust-mss '1380'
set interfaces wireguard wg0 peer macbook allowed-ips '10.254.1.2/32'
set interfaces wireguard wg0 peer macbook persistent-keepalive '15'
set interfaces wireguard wg0 peer macbook public-key '+KktRAsWwGruA/0LfOv7z2oG2sd1vkcp1aZrPdS4F1Q='
set interfaces wireguard wg0 peer pixel allowed-ips '10.254.1.3/32'
set interfaces wireguard wg0 peer pixel persistent-keepalive '15'
set interfaces wireguard wg0 peer pixel public-key 'kDZr+Om6YTBQjYqtmp9LV48d/UXhUWdkBcrKzG78CjA='
set interfaces wireguard wg0 peer realmetab allowed-ips '10.254.1.4/32'
set interfaces wireguard wg0 peer realmetab persistent-keepalive '15'
set interfaces wireguard wg0 peer realmetab public-key 'koviCLSU20it5UVa2S4Q0Wn6aDxYGnJDRJl9hTN6hwk='
set interfaces wireguard wg0 peer gierzwald allowed-ips '10.254.2.1/32'
set interfaces wireguard wg0 peer gierzwald allowed-ips '10.2.1.0/24'
set interfaces wireguard wg0 peer gierzwald persistent-keepalive '15'
set interfaces wireguard wg0 peer gierzwald public-key 'kr3xTbwvqWLnM6f061rrB+f/Es0ZKCDTwz/5qA9yYxk='