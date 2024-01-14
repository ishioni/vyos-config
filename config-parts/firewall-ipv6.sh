#!/bin/vbash

set firewall ipv6 forward filter rule 10 action 'jump'
set firewall ipv6 forward filter rule 10 inbound-interface name 'pppoe1'
set firewall ipv6 forward filter rule 10 jump-target 'WAN_IN'

set firewall ipv6 input filter rule 10 action 'jump'
set firewall ipv6 input filter rule 10 inbound-interface name 'pppoe1'
set firewall ipv6 input filter rule 10 jump-target 'WAN_LOCAL'

set firewall ipv6 name WAN_IN default-action 'drop'
set firewall ipv6 name WAN_IN rule 10 action 'accept'
set firewall ipv6 name WAN_IN rule 10 state 'established'
set firewall ipv6 name WAN_IN rule 10 state 'related'
set firewall ipv6 name WAN_IN rule 20 action 'accept'
set firewall ipv6 name WAN_IN rule 20 protocol 'icmpv6'

set firewall ipv6 name WAN_LOCAL default-action 'drop'
set firewall ipv6 name WAN_LOCAL rule 10 action 'accept'
set firewall ipv6 name WAN_LOCAL rule 10 state 'established'
set firewall ipv6 name WAN_LOCAL rule 10 state 'related'
set firewall ipv6 name WAN_LOCAL rule 20 action 'accept'
set firewall ipv6 name WAN_LOCAL rule 20 protocol 'icmpv6'
set firewall ipv6 name WAN_LOCAL rule 30 action 'accept'
set firewall ipv6 name WAN_LOCAL rule 30 destination port '546'
set firewall ipv6 name WAN_LOCAL rule 30 source port '547'
set firewall ipv6 name WAN_LOCAL rule 30 protocol 'udp'