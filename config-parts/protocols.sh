#!/bin/vbash

set protocols bgp system-as '64500'
set protocols bgp parameters router-id '10.1.4.1'

# New Talos BGP
set protocols bgp neighbor 10.1.2.30 description 'master-0'
set protocols bgp neighbor 10.1.2.30 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.30 remote-as '65501'
set protocols bgp neighbor 10.1.2.31 description 'master-1'
set protocols bgp neighbor 10.1.2.31 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.31 remote-as '65501'
set protocols bgp neighbor 10.1.2.32 description 'master-2'
set protocols bgp neighbor 10.1.2.32 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.32 remote-as '65501'
set protocols bgp neighbor 10.1.2.40 description 'worker-0'
set protocols bgp neighbor 10.1.2.40 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.40 remote-as '65501'
set protocols bgp neighbor 10.1.2.41 description 'worker-1'
set protocols bgp neighbor 10.1.2.41 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.41 remote-as '65501'
set protocols bgp neighbor 10.1.2.42 description 'worker-2'
set protocols bgp neighbor 10.1.2.42 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.42 remote-as '65501'

# Talos BGP
set protocols bgp neighbor 10.1.4.10 description 'master-0'
set protocols bgp neighbor 10.1.4.10 address-family ipv4-unicast
set protocols bgp neighbor 10.1.4.10 remote-as '64503'
set protocols bgp neighbor 10.1.4.11 description 'master-1'
set protocols bgp neighbor 10.1.4.11 address-family ipv4-unicast
set protocols bgp neighbor 10.1.4.11 remote-as '64503'
set protocols bgp neighbor 10.1.4.12 description 'master-2'
set protocols bgp neighbor 10.1.4.12 address-family ipv4-unicast
set protocols bgp neighbor 10.1.4.12 remote-as '64503'
set protocols bgp neighbor 10.1.4.20 description 'worker-0'
set protocols bgp neighbor 10.1.4.20 address-family ipv4-unicast
set protocols bgp neighbor 10.1.4.20 remote-as '64503'
set protocols bgp neighbor 10.1.4.21 description 'worker-1'
set protocols bgp neighbor 10.1.4.21 address-family ipv4-unicast
set protocols bgp neighbor 10.1.4.21 remote-as '64503'
set protocols bgp neighbor 10.1.4.22 description 'worker-2'
set protocols bgp neighbor 10.1.4.22 address-family ipv4-unicast
set protocols bgp neighbor 10.1.4.22 remote-as '64503'

# TrueNAS BGP
set protocols bgp neighbor 10.1.4.2 description 'truenas'
set protocols bgp neighbor 10.1.4.2 address-family ipv4-unicast
set protocols bgp neighbor 10.1.4.2 remote-as '64504'