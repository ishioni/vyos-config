#!/bin/vbash

# Zone WAN

# LOCAL -> WAN
set firewall ipv4 name local-wan default-action 'accept'
set firewall ipv4 name local-wan description 'From LOCAL to WAN'
# CONTAINERS -> WAN
set firewall ipv4 name containers-wan default-action 'accept'
set firewall ipv4 name containers-wan description 'From CONTAINERS to WAN'
# NETWORK -> WAN
set firewall ipv4 name network-wan default-action 'accept'
set firewall ipv4 name network-wan description 'From NETWORK to WAN'
# SERVERS -> WAN
set firewall ipv4 name servers-wan default-action 'accept'
set firewall ipv4 name servers-wan description 'From SERVERS to WAN'
# IOT -> WAN
set firewall ipv4 name iot-wan default-action 'accept'
set firewall ipv4 name iot-wan description 'From IOT to WAN'
# KUBERNETES -> WAN
set firewall ipv4 name kubernetes-wan default-action 'accept'
set firewall ipv4 name kubernetes-wan description 'From IOT to WAN'
# TRUSTED -> WAN
set firewall ipv4 name trusted-wan default-action 'accept'
set firewall ipv4 name trusted-wan description 'From TRUSTED to WAN'