# #!/bin/vbash

#!/bin/vbash

# ### Zone local ###
create-firewall-rule local
  to-vlan containers accept
  to-vlan network accept
  to-vlan servers accept
  to-vlan iot accept
  to-vlan trusted accept
  to-vlan wan accept

# ### Zone Containers ###
create-firewall-rule containers
  interfaces pod-services
  to-vlan local accept
  to-vlan network accept
  to-vlan servers accept
  to-vlan iot accept
  to-vlan trusted accept
  to-vlan wan accept


# ### Zone Network ###
create-firewall-rule network
  interfaces eth6
  to-vlan local accept
  to-vlan containers accept
  to-vlan servers accept
  to-vlan iot accept
  to-vlan trusted accept
  to-vlan wan accept


# ### Zone Servers ###
create-firewall-rule servers
  interfaces eth6.2
  to-vlan local accept
  to-vlan containers accept
  to-vlan network accept
  to-vlan iot accept
  to-vlan trusted accept
  to-vlan wan accept

# ### Zone IoT ###
create-firewall-rule iot
  interfaces eth6.3
  to-vlan local accept
  to-vlan containers accept
  to-vlan network accept
  to-vlan servers accept
  to-vlan trusted accept
  to-vlan wan accept


# ### Zone Trusted ###
create-firewall-rule trusted
  interfaces eth6.5 wg0
  to-vlan local accept
  to-vlan containers accept
  to-vlan network accept
  to-vlan servers accept
  to-vlan iot accept
  to-vlan wan accept


# ### Zone WAN ###
create-firewall-rule wan
  interfaces pppoe0
  to-vlan local drop-log
  to-vlan containers drop-log
  to-vlan network drop-log
  to-vlan servers drop-log
  to-vlan iot drop-log
  to-vlan trusted drop-log



# # CONTAINERS -> LOCAL
# set firewall ipv4 name containers-local description 'From Containers to LOCAL'
# set firewall ipv4 name containers-local default-action 'accept'
# set firewall ipv4 name containers-local rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name containers-local rule 999 state 'invalid'
# set firewall ipv4 name containers-local rule 999 action 'accept'
# set firewall ipv4 name containers-local rule 999 'log'

# # NETWORK -> LOCAL
# set firewall ipv4 name network-local description 'From NETWORK to LOCAL'
# set firewall ipv4 name network-local default-action 'accept'
# set firewall ipv4 name network-local rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name network-local rule 999 state 'invalid'
# set firewall ipv4 name network-local rule 999 action 'accept'
# set firewall ipv4 name network-local rule 999 log

# # SERVERS -> LOCAL
# set firewall ipv4 name servers-local description 'From SERVERS to LOCAL'
# set firewall ipv4 name servers-local default-action 'accept'
# set firewall ipv4 name servers-local rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name servers-local rule 999 state 'invalid'
# set firewall ipv4 name servers-local rule 999 action 'accept'
# set firewall ipv4 name servers-local rule 999 log

# # IOT -> LOCAL
# set firewall ipv4 name iot-local description 'From IOT to LOCAL'
# set firewall ipv4 name iot-local default-action 'accept'
# set firewall ipv4 name iot-local rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name iot-local rule 999 state 'invalid'
# set firewall ipv4 name iot-local rule 999 action 'accept'
# set firewall ipv4 name iot-local rule 999 log

# # TRUSTED -> LOCAL
# set firewall ipv4 name trusted-local description 'From TRUSTED to LOCAL'
# set firewall ipv4 name trusted-local default-action 'accept'
# set firewall ipv4 name trusted-local rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name trusted-local rule 999 state 'invalid'
# set firewall ipv4 name trusted-local rule 999 action 'accept'
# set firewall ipv4 name trusted-local rule 999 log

# # WAN -> LOCAL
# set firewall ipv4 name wan-local description 'From WAN to LOCAL'
# set firewall ipv4 name wan-local default-action 'drop'
# # set firewall ipv4 name wan-local default-log
# set firewall ipv4 name wan-local rule 100 action 'accept'
# set firewall ipv4 name wan-local rule 100 description 'Rule: accept ICMP'
# set firewall ipv4 name wan-local rule 100 protocol 'icmp'
# set firewall ipv4 name wan-local rule 200 action 'accept'
# set firewall ipv4 name wan-local rule 200 description 'Rule: accept_wireguard'
# set firewall ipv4 name wan-local rule 200 destination group port-group 'wireguard'
# set firewall ipv4 name wan-local rule 200 protocol 'udp'
# set firewall ipv4 name wan-local rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name wan-local rule 999 state 'invalid'
# set firewall ipv4 name wan-local rule 999 action 'accept'
# set firewall ipv4 name wan-local rule 999 log



# ### Zone Containers ###

# # LOCAL -> Containers
# set firewall ipv4 name local-containers description 'From LOCAL to Containers'
# set firewall ipv4 name local-containers default-action 'accept'
# set firewall ipv4 name local-containers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name local-containers rule 999 state 'invalid'
# set firewall ipv4 name local-containers rule 999 action 'accept'
# set firewall ipv4 name local-containers rule 999 log

# # NETWORK -> Containers
# set firewall ipv4 name network-containers description 'From NETWORK to Containers'
# set firewall ipv4 name network-containers default-action 'accept'
# set firewall ipv4 name network-containers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name network-containers rule 999 state 'invalid'
# set firewall ipv4 name network-containers rule 999 action 'accept'
# set firewall ipv4 name network-containers rule 999 log

# # SERVERS -> Containers
# set firewall ipv4 name servers-containers description 'From SERVERS to Containers'
# set firewall ipv4 name servers-containers default-action 'accept'
# set firewall ipv4 name servers-containers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name servers-containers rule 999 state 'invalid'
# set firewall ipv4 name servers-containers rule 999 action 'accept'
# set firewall ipv4 name servers-containers rule 999 log

# # IOT -> Containers
# set firewall ipv4 name iot-containers description 'From IOT to Containers'
# set firewall ipv4 name iot-containers default-action 'accept'
# set firewall ipv4 name iot-containers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name iot-containers rule 999 state 'invalid'
# set firewall ipv4 name iot-containers rule 999 action 'accept'
# set firewall ipv4 name iot-containers rule 999 log

# # TRUSTED -> Containers
# set firewall ipv4 name trusted-containers description 'From TRUSTED to Containers'
# set firewall ipv4 name trusted-containers default-action 'accept'
# set firewall ipv4 name trusted-containers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name trusted-containers rule 999 state 'invalid'
# set firewall ipv4 name trusted-containers rule 999 action 'accept'
# set firewall ipv4 name trusted-containers rule 999 log

# # WAN -> Containers
# set firewall ipv4 name wan-containers description 'From WAN to Containers'
# set firewall ipv4 name wan-containers default-action 'drop'
# set firewall ipv4 name wan-containers default-log
# set firewall ipv4 name wan-containers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name wan-containers rule 999 state 'invalid'
# set firewall ipv4 name wan-containers rule 999 action 'accept'
# set firewall ipv4 name wan-containers rule 999 log

# ### Zone NETWORK ###

# # LOCAL -> NETWORK
# set firewall ipv4 name local-network description 'From LOCAL to NETWORK'
# set firewall ipv4 name local-network default-action 'accept'
# set firewall ipv4 name local-network rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name local-network rule 999 state 'invalid'
# set firewall ipv4 name local-network rule 999 action 'accept'
# set firewall ipv4 name local-network rule 999 log

# # Containers -> NETWORK
# set firewall ipv4 name containers-network description 'From Container to NETWORK'
# set firewall ipv4 name containers-network default-action 'accept'
# set firewall ipv4 name containers-network rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name containers-network rule 999 state 'invalid'
# set firewall ipv4 name containers-network rule 999 action 'accept'
# set firewall ipv4 name containers-network rule 999 log

# # SERVERS -> NETWORK
# set firewall ipv4 name servers-network description 'From SERVERS to NETWORK'
# set firewall ipv4 name servers-network default-action 'accept'
# set firewall ipv4 name servers-network rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name servers-network rule 999 state 'invalid'
# set firewall ipv4 name servers-network rule 999 action 'accept'
# set firewall ipv4 name servers-network rule 999 log

# # IOT -> NETWORK
# set firewall ipv4 name iot-network description 'From IOT to NETWORK'
# set firewall ipv4 name iot-network default-action 'accept'
# set firewall ipv4 name iot-network rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name iot-network rule 999 state 'invalid'
# set firewall ipv4 name iot-network rule 999 action 'accept'
# set firewall ipv4 name iot-network rule 999 log

# # TRUSTED -> NETWORK
# set firewall ipv4 name trusted-network description 'From TRUSTED to NETWORK'
# set firewall ipv4 name trusted-network default-action 'accept'
# set firewall ipv4 name trusted-network rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name trusted-network rule 999 state 'invalid'
# set firewall ipv4 name trusted-network rule 999 action 'accept'
# set firewall ipv4 name trusted-network rule 999 log

# # WAN -> NETWORK
# set firewall ipv4 name wan-network description 'From WAN to NETWORK'
# set firewall ipv4 name wan-network default-action 'drop'
# set firewall ipv4 name wan-network default-log
# set firewall ipv4 name wan-network rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name wan-network rule 999 state 'invalid'
# set firewall ipv4 name wan-network rule 999 action 'accept'
# set firewall ipv4 name wan-network rule 999 log

# ### Zone SERVERS ###

# # LOCAL -> SERVERS
# set firewall ipv4 name local-servers description 'From LOCAL to SERVERS'
# set firewall ipv4 name local-servers default-action 'accept'
# set firewall ipv4 name local-servers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name local-servers rule 999 state 'invalid'
# set firewall ipv4 name local-servers rule 999 action 'accept'
# set firewall ipv4 name local-servers rule 999 log

# # Containers -> SERVERS
# set firewall ipv4 name containers-servers description 'From Container to SERVERS'
# set firewall ipv4 name containers-servers default-action 'accept'
# set firewall ipv4 name containers-servers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name containers-servers rule 999 state 'invalid'
# set firewall ipv4 name containers-servers rule 999 action 'accept'
# set firewall ipv4 name containers-servers rule 999 log

# # NETWORK -> SERVERS
# set firewall ipv4 name network-servers description 'From NETWORK to SERVERS'
# set firewall ipv4 name network-servers default-action 'accept'
# set firewall ipv4 name network-servers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name network-servers rule 999 state 'invalid'
# set firewall ipv4 name network-servers rule 999 action 'accept'
# set firewall ipv4 name network-servers rule 999 log

# # IOT -> SERVERS
# set firewall ipv4 name iot-servers description 'From IOT to SERVERS'
# set firewall ipv4 name iot-servers default-action 'accept'
# set firewall ipv4 name iot-servers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name iot-servers rule 999 state 'invalid'
# set firewall ipv4 name iot-servers rule 999 action 'accept'
# set firewall ipv4 name iot-servers rule 999 log

# # TRUSTED -> SERVERS
# set firewall ipv4 name trusted-servers description 'From TRUSTED to SERVERS'
# set firewall ipv4 name trusted-servers default-action 'accept'
# set firewall ipv4 name trusted-servers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name trusted-servers rule 999 state 'invalid'
# set firewall ipv4 name trusted-servers rule 999 action 'accept'
# set firewall ipv4 name trusted-servers rule 999 log

# # WAN -> SERVERS
# set firewall ipv4 name wan-servers description 'From WAN to SERVERS'
# set firewall ipv4 name wan-servers default-action 'drop'
# set firewall ipv4 name wan-servers default-log
# set firewall ipv4 name wan-servers rule 100 action 'accept'
# set firewall ipv4 name wan-servers rule 100 description 'Rule: SSH jumphost'
# set firewall ipv4 name wan-servers rule 100 destination address '10.1.2.66'
# set firewall ipv4 name wan-servers rule 100 destination port 'ssh'
# set firewall ipv4 name wan-servers rule 100 protocol 'tcp'
# set firewall ipv4 name wan-servers rule 110 description 'NAT: HTTP'
# set firewall ipv4 name wan-servers rule 110 action 'accept'
# set firewall ipv4 name wan-servers rule 110 destination address '10.84.2.2'
# set firewall ipv4 name wan-servers rule 110 destination port '80'
# set firewall ipv4 name wan-servers rule 110 protocol 'tcp'
# set firewall ipv4 name wan-servers rule 120 description 'NAT: HTTPS'
# set firewall ipv4 name wan-servers rule 120 action 'accept'
# set firewall ipv4 name wan-servers rule 120 destination address '10.84.2.2'
# set firewall ipv4 name wan-servers rule 120 destination port '443'
# set firewall ipv4 name wan-servers rule 120 protocol 'tcp'
# set firewall ipv4 name wan-servers rule 130 description 'NAT: TORRENT'
# set firewall ipv4 name wan-servers rule 130 action 'accept'
# set firewall ipv4 name wan-servers rule 130 destination address '10.84.2.4'
# set firewall ipv4 name wan-servers rule 130 destination port '51413'
# set firewall ipv4 name wan-servers rule 130 protocol 'tcp'
# set firewall ipv4 name wan-servers rule 140 description 'NAT: MINECRAFT'
# set firewall ipv4 name wan-servers rule 140 action 'accept'
# set firewall ipv4 name wan-servers rule 140 destination address '10.84.2.5'
# set firewall ipv4 name wan-servers rule 140 destination port '25565'
# set firewall ipv4 name wan-servers rule 140 protocol 'tcp'
# set firewall ipv4 name wan-servers rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name wan-servers rule 999 state 'invalid'
# set firewall ipv4 name wan-servers rule 999 action 'accept'
# set firewall ipv4 name wan-servers rule 999 log

# ### Zone IOT ###

# # LOCAL -> IOT
# set firewall ipv4 name local-iot description 'From LOCAL to IOT'
# set firewall ipv4 name local-iot default-action 'accept'
# set firewall ipv4 name local-iot rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name local-iot rule 999 state 'invalid'
# set firewall ipv4 name local-iot rule 999 action 'accept'
# set firewall ipv4 name local-iot rule 999 log

# # Containers -> IOT
# set firewall ipv4 name containers-iot description 'From Container to IOT'
# set firewall ipv4 name containers-iot default-action 'accept'
# set firewall ipv4 name containers-iot rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name containers-iot rule 999 state 'invalid'
# set firewall ipv4 name containers-iot rule 999 action 'accept'
# set firewall ipv4 name containers-iot rule 999 log

# # NETWORK -> IOT
# set firewall ipv4 name network-iot description 'From NETWORK to IOT'
# set firewall ipv4 name network-iot default-action 'accept'
# set firewall ipv4 name network-iot rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name network-iot rule 999 state 'invalid'
# set firewall ipv4 name network-iot rule 999 action 'accept'
# set firewall ipv4 name network-iot rule 999 log

# # SERVERS -> IOT
# set firewall ipv4 name servers-iot description 'From IOT to IOT'
# set firewall ipv4 name servers-iot default-action 'accept'
# set firewall ipv4 name servers-iot rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name servers-iot rule 999 state 'invalid'
# set firewall ipv4 name servers-iot rule 999 action 'accept'
# set firewall ipv4 name servers-iot rule 999 log

# # TRUSTED -> IOT
# set firewall ipv4 name trusted-iot description 'From TRUSTED to IOT'
# set firewall ipv4 name trusted-iot default-action 'accept'
# set firewall ipv4 name trusted-iot rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name trusted-iot rule 999 state 'invalid'
# set firewall ipv4 name trusted-iot rule 999 action 'accept'
# set firewall ipv4 name trusted-iot rule 999 log

# # WAN -> IOT
# set firewall ipv4 name wan-iot description 'From WAN to IOT'
# set firewall ipv4 name wan-iot default-action 'drop'
# set firewall ipv4 name wan-iot default-log
# set firewall ipv4 name wan-iot rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name wan-iot rule 999 state 'invalid'
# set firewall ipv4 name wan-iot rule 999 action 'accept'
# set firewall ipv4 name wan-iot rule 999 log

# ### Zone TRUSTED ###

# # LOCAL -> TRUSTED
# set firewall ipv4 name local-trusted description 'From LOCAL to TRUSTED'
# set firewall ipv4 name local-trusted default-action 'accept'
# set firewall ipv4 name local-trusted rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name local-trusted rule 999 state 'invalid'
# set firewall ipv4 name local-trusted rule 999 action 'accept'
# set firewall ipv4 name local-trusted rule 999 log

# # Containers -> TRUSTED
# set firewall ipv4 name containers-trusted description 'From Container to TRUSTED'
# set firewall ipv4 name containers-trusted default-action 'accept'
# set firewall ipv4 name containers-trusted rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name containers-trusted rule 999 state 'invalid'
# set firewall ipv4 name containers-trusted rule 999 action 'accept'
# set firewall ipv4 name containers-trusted rule 999 log

# # NETWORK -> TRUSTED
# set firewall ipv4 name network-trusted description 'From NETWORK to TRUSTED'
# set firewall ipv4 name network-trusted default-action 'accept'
# set firewall ipv4 name network-trusted rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name network-trusted rule 999 state 'invalid'
# set firewall ipv4 name network-trusted rule 999 action 'accept'
# set firewall ipv4 name network-trusted rule 999 log

# # SERVERS -> TRUSTED
# set firewall ipv4 name servers-trusted description 'From TRUSTED to TRUSTED'
# set firewall ipv4 name servers-trusted default-action 'accept'
# set firewall ipv4 name servers-trusted rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name servers-trusted rule 999 state 'invalid'
# set firewall ipv4 name servers-trusted rule 999 action 'accept'
# set firewall ipv4 name servers-trusted rule 999 log

# # IOT -> TRUSTED
# set firewall ipv4 name iot-trusted description 'From IOT to TRUSTED'
# set firewall ipv4 name iot-trusted default-action 'accept'
# set firewall ipv4 name iot-trusted rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name iot-trusted rule 999 state 'invalid'
# set firewall ipv4 name iot-trusted rule 999 action 'accept'
# set firewall ipv4 name iot-trusted rule 999 log

# # WAN -> TRUSTED
# set firewall ipv4 name wan-trusted description 'From WAN to TRUSTED'
# set firewall ipv4 name wan-trusted default-action 'drop'
# set firewall ipv4 name wan-trusted default-log
# set firewall ipv4 name wan-trusted rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name wan-trusted rule 999 state 'invalid'
# set firewall ipv4 name wan-trusted rule 999 action 'accept'
# set firewall ipv4 name wan-trusted rule 999 log

# ### Zone WAN ###

# # LOCAL -> WAN
# set firewall ipv4 name local-wan description 'From LOCAL to WAN'
# set firewall ipv4 name local-wan default-action 'accept'
# set firewall ipv4 name local-wan rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name local-wan rule 999 state 'invalid'
# set firewall ipv4 name local-wan rule 999 action 'accept'
# set firewall ipv4 name local-wan rule 999 log

# # Containers -> WAN
# set firewall ipv4 name containers-wan description 'From Container to WAN'
# set firewall ipv4 name containers-wan default-action 'accept'
# set firewall ipv4 name containers-wan rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name containers-wan rule 999 state 'invalid'
# set firewall ipv4 name containers-wan rule 999 action 'accept'
# set firewall ipv4 name containers-wan rule 999 log

# # NETWORK -> WAN
# set firewall ipv4 name network-wan description 'From NETWORK to WAN'
# set firewall ipv4 name network-wan default-action 'accept'
# set firewall ipv4 name network-wan rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name network-wan rule 999 state 'invalid'
# set firewall ipv4 name network-wan rule 999 action 'accept'
# set firewall ipv4 name network-wan rule 999 log

# # SERVERS -> WAN
# set firewall ipv4 name servers-wan description 'From WAN to WAN'
# set firewall ipv4 name servers-wan default-action 'accept'
# set firewall ipv4 name servers-wan rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name servers-wan rule 999 state 'invalid'
# set firewall ipv4 name servers-wan rule 999 action 'accept'
# set firewall ipv4 name servers-wan rule 999 log

# # IOT -> WAN
# set firewall ipv4 name iot-wan description 'From IOT to WAN'
# set firewall ipv4 name iot-wan default-action 'accept'
# set firewall ipv4 name iot-wan rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name iot-wan rule 999 state 'invalid'
# set firewall ipv4 name iot-wan rule 999 action 'accept'
# set firewall ipv4 name iot-wan rule 999 log

# # TRUSTED -> WAN
# set firewall ipv4 name trusted-wan description 'From TRUSTED to WAN'
# set firewall ipv4 name trusted-wan default-action 'accept'
# set firewall ipv4 name trusted-wan rule 999 description 'Rule: drop_invalid'
# set firewall ipv4 name trusted-wan rule 999 state 'invalid'
# set firewall ipv4 name trusted-wan rule 999 action 'accept'
# set firewall ipv4 name trusted-wan rule 999 log