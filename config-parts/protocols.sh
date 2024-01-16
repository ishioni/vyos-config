#!/bin/vbash

set protocols bgp system-as '65500'
set protocols bgp parameters router-id '10.1.4.1'

# TrueNAS BGP
set protocols bgp neighbor 10.1.2.2 description 'truenas'
set protocols bgp neighbor 10.1.2.2 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.2 remote-as '65500'

# New Talos BGP
set protocols bgp neighbor 10.1.2.30 description 'master-0'
set protocols bgp neighbor 10.1.2.30 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.30 remote-as '65500'
set protocols bgp neighbor 10.1.2.31 description 'master-1'
set protocols bgp neighbor 10.1.2.31 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.31 remote-as '65500'
set protocols bgp neighbor 10.1.2.32 description 'master-2'
set protocols bgp neighbor 10.1.2.32 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.32 remote-as '65500'
set protocols bgp neighbor 10.1.2.40 description 'worker-0'
set protocols bgp neighbor 10.1.2.40 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.40 remote-as '65500'
set protocols bgp neighbor 10.1.2.41 description 'worker-1'
set protocols bgp neighbor 10.1.2.41 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.41 remote-as '65500'
set protocols bgp neighbor 10.1.2.42 description 'worker-2'
set protocols bgp neighbor 10.1.2.42 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.42 remote-as '65500'
