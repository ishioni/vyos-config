#!/bin/vbash

# Interface definitions
set interfaces ethernet eth0 description 'POE'
set interfaces ethernet eth0 hw-id '00:f0:da:ef:0a:d8'
set interfaces ethernet eth0 address '192.168.100.2/24'
set interfaces ethernet eth0 mtu '1512'
set interfaces ethernet eth0 ring-buffer rx '4096'
set interfaces ethernet eth0 ring-buffer tx '4096'
set interfaces ethernet eth1 description '2.5GbE'
set interfaces ethernet eth1 hw-id '00:f0:da:ef:0a:d5'
set interfaces ethernet eth2 description '2.5GbE'
set interfaces ethernet eth2 hw-id '00:f0:da:ef:0a:d4'
set interfaces ethernet eth3 hw-id '00:f0:da:ef:0a:d7'
set interfaces ethernet eth4 hw-id '00:f0:da:ef:0a:d6'
set interfaces ethernet eth5 description 'SFP1'
set interfaces ethernet eth5 hw-id '50:6b:4b:0c:1d:d9'
set interfaces ethernet eth5 ring-buffer rx '4096'
set interfaces ethernet eth5 ring-buffer tx '4096'
set interfaces ethernet eth6 description 'SFP2'
set interfaces ethernet eth6 hw-id '50:6b:4b:0c:1d:d8'
set interfaces ethernet eth6 ring-buffer rx '4096'
set interfaces ethernet eth6 ring-buffer tx '4096'

# WAN
set interfaces ethernet eth0 vif 35 description 'Internet'
set interfaces ethernet eth0 vif 35 mtu '1508'
set interfaces pppoe pppoe0 description 'WAN - Fiber'
set interfaces pppoe pppoe0 source-interface 'eth0.35'
set interfaces pppoe pppoe0 authentication user "${SECRET_ISP_AUTH_USER}"
set interfaces pppoe pppoe0 authentication password "${SECRET_ISP_AUTH_PASSWORD}"
set interfaces pppoe pppoe0 mtu '1500'
set interfaces pppoe pppoe0 mru '1500'
set interfaces pppoe pppoe0 'no-peer-dns'


# WAN v6
# set interfaces pppoe pppoe1 description 'WAN - Fiber v6'
# set interfaces pppoe pppoe1 source-interface 'eth0.35'
# set interfaces pppoe pppoe1 authentication user "${SECRET_ISP_AUTH_USER}/ipv6"
# set interfaces pppoe pppoe1 authentication password "${SECRET_ISP_AUTH_PASSWORD}"
# set interfaces pppoe pppoe1 ipv6 address 'autoconf'
# set interfaces pppoe pppoe1 dhcpv6-options pd 0 interface eth6.5 address '1'
# set interfaces pppoe pppoe1 dhcpv6-options pd 0 interface eth6.5 sla-id '0'
# set interfaces pppoe pppoe1 dhcpv6-options pd 0 length '56'
# set interfaces pppoe pppoe1 mtu '1500'
# set interfaces pppoe pppoe1 mru '1500'
# set interfaces pppoe pppoe1 'no-default-route'
# set interfaces pppoe pppoe1 'disable' #Broken!

# LAN
set interfaces ethernet eth6 address '10.1.1.1/24'
set interfaces ethernet eth6 vif 2 address '10.1.2.1/24'
set interfaces ethernet eth6 vif 2 description 'SERVERS'
set interfaces ethernet eth6 vif 3 address '10.1.3.1/24'
set interfaces ethernet eth6 vif 3 description 'IOT'
set interfaces ethernet eth6 vif 5 address '10.1.5.1/24'
set interfaces ethernet eth6 vif 5 description 'TRUSTED'

# Wireguard
set interfaces wireguard wg0 address '10.254.254.1/24'
set interfaces wireguard wg0 description 'WIREGUARD'
set interfaces wireguard wg0 private-key "${SECRET_WIREGUARD_PRIVATE_KEY}"
set interfaces wireguard wg0 port '51820'
set interfaces wireguard wg0 mtu '1420'
set interfaces wireguard wg0 ip adjust-mss '1380'
set interfaces wireguard wg0 peer macbook allowed-ips '10.254.254.2/32'
set interfaces wireguard wg0 peer macbook public-key 'Y1QRcvOIUomTacg5YiZcAoIHCynLojS7YvWZf0GAcSo='
set interfaces wireguard wg0 peer macbook persistent-keepalive '15'
set interfaces wireguard wg0 peer pixel allowed-ips '10.254.254.3/32'
set interfaces wireguard wg0 peer pixel public-key 'FTWtbDJyc72tqhh/qbqeYM2seu93BHyZK/v0EsSpuAA='
set interfaces wireguard wg0 peer pixel persistent-keepalive '15'
# set interfaces wireguard wg0 peer realmetab allowed-ips '10.254.1.4/32'
# set interfaces wireguard wg0 peer realmetab persistent-keepalive '15'
# set interfaces wireguard wg0 peer realmetab public-key 'koviCLSU20it5UVa2S4Q0Wn6aDxYGnJDRJl9hTN6hwk='
set interfaces wireguard wg0 peer gierzwald allowed-ips '10.254.2.1/32'
set interfaces wireguard wg0 peer gierzwald allowed-ips '10.2.1.0/24'
set interfaces wireguard wg0 peer gierzwald persistent-keepalive '15'
set interfaces wireguard wg0 peer gierzwald public-key 'kr3xTbwvqWLnM6f061rrB+f/Es0ZKCDTwz/5qA9yYxk='