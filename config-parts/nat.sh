#!/bin/vbash

# LAN -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 outbound-interface name 'eth0'
set nat source rule 100 translation address 'masquerade'

# Force NTP
set nat destination rule 200 description 'Force NTP for NETWORK'
set nat destination rule 200 destination address '!10.1.1.1'
set nat destination rule 200 destination port '123'
set nat destination rule 200 inbound-interface name 'br0'
set nat destination rule 200 protocol 'udp'
set nat destination rule 200 translation address '10.1.1.1'
set nat destination rule 200 translation port '123'

set nat destination rule 220 description 'Force NTP for SERVERS'
set nat destination rule 220 destination address '!10.1.2.1'
set nat destination rule 220 destination port '123'
set nat destination rule 220 inbound-interface name 'br0.2'
set nat destination rule 220 protocol 'udp'
set nat destination rule 220 translation address '10.1.2.1'
set nat destination rule 220 translation port '123'

set nat destination rule 230 description 'Force NTP for IOT'
set nat destination rule 230 destination address '!10.1.3.1'
set nat destination rule 230 destination port '123'
set nat destination rule 230 inbound-interface name 'br0.3'
set nat destination rule 230 protocol 'udp'
set nat destination rule 230 translation address '10.1.3.1'
set nat destination rule 230 translation port '123'

set nat destination rule 240 description 'Force NTP for KUBERNETES'
set nat destination rule 240 destination address '!10.1.4.1'
set nat destination rule 240 destination port '123'
set nat destination rule 240 inbound-interface name 'br0.4'
set nat destination rule 240 protocol 'udp'
set nat destination rule 240 translation address '10.1.4.1'
set nat destination rule 240 translation port '123'

set nat destination rule 250 description 'Force NTP for LAN'
set nat destination rule 250 destination address '!10.1.5.1'
set nat destination rule 250 destination port '123'
set nat destination rule 250 inbound-interface name 'br0.5'
set nat destination rule 250 protocol 'udp'
set nat destination rule 250 translation address '10.1.5.1'
set nat destination rule 250 translation port '123'