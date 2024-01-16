#!/bin/vbash

# LAN -> Leox masquarade
set nat source rule 99 description 'LAN -> Leox'
set nat source rule 99 destination address '192.168.100.0/24'
set nat source rule 99 outbound-interface name 'eth0'
set nat source rule 99 translation address 'masquerade'

# LAN -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 outbound-interface name 'pppoe0'
set nat source rule 100 translation address 'masquerade'

# HTTP
set nat destination rule 100 description 'Public ingress - http'
set nat destination rule 100 destination port '80'
set nat destination rule 100 inbound-interface name 'pppoe0'
set nat destination rule 100 protocol 'tcp'
set nat destination rule 100 translation address '10.84.2.2'
set nat destination rule 100 translation port '80'

# HTTPS
set nat destination rule 101 description 'Public ingress - https'
set nat destination rule 101 destination port '443'
set nat destination rule 101 inbound-interface name 'pppoe0'
set nat destination rule 101 protocol 'tcp'
set nat destination rule 101 translation address '10.84.2.2'
set nat destination rule 101 translation port '443'

# TORRENT
set nat destination rule 102 description 'uTP'
set nat destination rule 102 destination port '51413'
set nat destination rule 102 inbound-interface name 'pppoe0'
set nat destination rule 102 protocol 'tcp'
set nat destination rule 102 translation address '10.84.2.4'
set nat destination rule 102 translation port '51413'

# MINECRAFT
set nat destination rule 103 description 'Minecraft'
set nat destination rule 103 destination port '25565'
set nat destination rule 103 inbound-interface name 'pppoe0'
set nat destination rule 103 protocol 'tcp'
set nat destination rule 103 translation address '10.84.2.5'
set nat destination rule 103 translation port '25565'

# JUMPHOST
set nat destination rule 104 description 'Jumphost'
set nat destination rule 104 destination port '22'
set nat destination rule 104 inbound-interface name 'pppoe0'
set nat destination rule 104 protocol 'tcp'
set nat destination rule 104 translation address '10.1.2.66'
set nat destination rule 104 translation port '22'

# Force NTP
# set nat destination rule 200 description 'Force NTP for NETWORK'
# set nat destination rule 200 destination address '!10.1.1.1'
# set nat destination rule 200 destination port '123'
# set nat destination rule 200 inbound-interface name 'br0'
# set nat destination rule 200 protocol 'udp'
# set nat destination rule 200 translation address '10.1.1.1'
# set nat destination rule 200 translation port '123'

# set nat destination rule 220 description 'Force NTP for SERVERS'
# set nat destination rule 220 destination address '!10.1.2.1'
# set nat destination rule 220 destination port '123'
# set nat destination rule 220 inbound-interface name 'br0.2'
# set nat destination rule 220 protocol 'udp'
# set nat destination rule 220 translation address '10.1.2.1'
# set nat destination rule 220 translation port '123'

# set nat destination rule 230 description 'Force NTP for IOT'
# set nat destination rule 230 destination address '!10.1.3.1'
# set nat destination rule 230 destination port '123'
# set nat destination rule 230 inbound-interface name 'br0.3'
# set nat destination rule 230 protocol 'udp'
# set nat destination rule 230 translation address '10.1.3.1'
# set nat destination rule 230 translation port '123'

# set nat destination rule 250 description 'Force NTP for LAN'
# set nat destination rule 250 destination address '!10.1.5.1'
# set nat destination rule 250 destination port '123'
# set nat destination rule 250 inbound-interface name 'br0.5'
# set nat destination rule 250 protocol 'udp'
# set nat destination rule 250 translation address '10.1.5.1'
# set nat destination rule 250 translation port '123'