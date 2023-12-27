#!/bin/vbash

# LAN -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 outbound-interface name 'eth0'
set nat source rule 100 translation address 'masquerade'

# Force NTP
set nat destination rule 200 description 'Force NTP for NETWORK'
set nat destination rule 200 destination address '!10.1.0.1'
set nat destination rule 200 destination port '123'
set nat destination rule 200 inbound-interface name 'eth4'
set nat destination rule 200 protocol 'udp'
set nat destination rule 200 translation address '10.1.0.1'
set nat destination rule 200 translation port '123'

set nat destination rule 201 description 'Force NTP for SERVERS'
set nat destination rule 201 destination address '!10.1.1.1'
set nat destination rule 201 destination port '123'
set nat destination rule 201 inbound-interface name 'eth4'
set nat destination rule 201 protocol 'udp'
set nat destination rule 201 translation address '10.1.1.1'
set nat destination rule 201 translation port '123'

set nat destination rule 202 description 'Force NTP for LAN'
set nat destination rule 202 destination address '!10.1.2.1'
set nat destination rule 202 destination port '123'
set nat destination rule 202 inbound-interface name 'eth4.2'
set nat destination rule 202 protocol 'udp'
set nat destination rule 202 translation address '10.1.2.1'
set nat destination rule 202 translation port '123'

set nat destination rule 203 description 'Force NTP for IOT'
set nat destination rule 203 destination address '!10.1.3.1'
set nat destination rule 203 destination port '123'
set nat destination rule 203 inbound-interface name 'eth4.3'
set nat destination rule 203 protocol 'udp'
set nat destination rule 203 translation address '10.1.3.1'
set nat destination rule 203 translation port '123'

set nat destination rule 204 description 'Force NTP for KUBERNETES'
set nat destination rule 204 destination address '!10.1.4.1'
set nat destination rule 204 destination port '123'
set nat destination rule 204 inbound-interface name 'eth4.4'
set nat destination rule 204 protocol 'udp'
set nat destination rule 204 translation address '10.1.4.1'
set nat destination rule 204 translation port '123'