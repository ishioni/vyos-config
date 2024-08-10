#!/bin/vbash

set protocols bgp system-as '65500'
set protocols bgp parameters router-id '10.1.2.1'

# TrueNAS BGP
set protocols bgp neighbor 10.1.2.2 description 'truenas'
set protocols bgp neighbor 10.1.2.2 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.2 remote-as '65500'

# New Talos BGP
set protocols bgp neighbor 10.1.2.33 description 'master-0'
set protocols bgp neighbor 10.1.2.33 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.33 remote-as '65500'
set protocols bgp neighbor 10.1.2.34 description 'master-1'
set protocols bgp neighbor 10.1.2.34 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.34 remote-as '65500'
set protocols bgp neighbor 10.1.2.35 description 'master-2'
set protocols bgp neighbor 10.1.2.35 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.35 remote-as '65500'
set protocols bgp neighbor 10.1.2.36 description 'worker-0'
set protocols bgp neighbor 10.1.2.36 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.36 remote-as '65500'
set protocols bgp neighbor 10.1.2.37 description 'worker-1'
set protocols bgp neighbor 10.1.2.37 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.37 remote-as '65500'
set protocols bgp neighbor 10.1.2.38 description 'worker-2'
set protocols bgp neighbor 10.1.2.38 address-family ipv4-unicast
set protocols bgp neighbor 10.1.2.38 remote-as '65500'
