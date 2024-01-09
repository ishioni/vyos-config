#!/bin/vbash

### Zone local ###

# CONTAINERS -> LOCAL
set firewall ipv4 name containers-local description 'From Containers to LOCAL'
set firewall ipv4 name containers-local default-action 'accept'

# NETWORK -> LOCAL
set firewall ipv4 name network-local description 'From NETWORK to LOCAL'
set firewall ipv4 name network-local default-action 'accept'

# SERVERS -> LOCAL
set firewall ipv4 name servers-local description 'From SERVERS to LOCAL'
set firewall ipv4 name servers-local default-action 'accept'

# IOT -> LOCAL
set firewall ipv4 name iot-local description 'From IOT to LOCAL'
set firewall ipv4 name iot-local default-action 'accept'

# KUBERNETES -> LOCAL
set firewall ipv4 name kubernetes-local description 'From KUBERNETES to LOCAL'
set firewall ipv4 name kubernetes-local default-action 'accept'

# TRUSTED -> LOCAL
set firewall ipv4 name trusted-local description 'From TRUSTED to LOCAL'
set firewall ipv4 name trusted-local default-action 'accept'

# WAN -> LOCAL
set firewall ipv4 name wan-local description 'From WAN to LOCAL'
set firewall ipv4 name wan-local default-action 'drop'
set firewall ipv4 name wan-local default-log
# set firewall ipv4 name wan-local rule 1 action 'accept'
# set firewall ipv4 name wan-local rule 1 description 'Rule: accept_ssh'
# set firewall ipv4 name wan-local rule 1 destination port 'ssh'
# set firewall ipv4 name wan-local rule 1 protocol 'tcp'
set firewall ipv4 name wan-local rule 2 action 'accept'
set firewall ipv4 name wan-local rule 2 description 'Rule: accept_wireguard'
set firewall ipv4 name wan-local rule 2 destination group port-group 'wireguard'
set firewall ipv4 name wan-local rule 2 protocol 'udp'


### Zone Containers ###

# LOCAL -> Containers
set firewall ipv4 name local-containers description 'From LOCAL to Containers'
set firewall ipv4 name local-containers default-action 'accept'

# NETWORK -> Containers
set firewall ipv4 name network-containers description 'From NETWORK to Containers'
set firewall ipv4 name network-containers default-action 'accept'

# SERVERS -> Containers
set firewall ipv4 name servers-containers description 'From SERVERS to Containers'
set firewall ipv4 name servers-containers default-action 'accept'

# IOT -> Containers
set firewall ipv4 name iot-containers description 'From IOT to Containers'
set firewall ipv4 name iot-containers default-action 'accept'

# KUBERNETES -> Containers
set firewall ipv4 name kubernetes-containers description 'From KUBERNETES to Containers'
set firewall ipv4 name kubernetes-containers default-action 'accept'

# TRUSTED -> Containers
set firewall ipv4 name trusted-containers description 'From TRUSTED to Containers'
set firewall ipv4 name trusted-containers default-action 'accept'

# WAN -> Containers
set firewall ipv4 name wan-containers description 'From WAN to Containers'
set firewall ipv4 name wan-containers default-action 'drop'
set firewall ipv4 name wan-containers default-log

### Zone NETWORK ###

# LOCAL -> NETWORK
set firewall ipv4 name local-network description 'From LOCAL to NETWORK'
set firewall ipv4 name local-network default-action 'accept'

# Containers -> NETWORK
set firewall ipv4 name containers-network description 'From Container to NETWORK'
set firewall ipv4 name containers-network default-action 'accept'

# SERVERS -> NETWORK
set firewall ipv4 name servers-network description 'From SERVERS to NETWORK'
set firewall ipv4 name servers-network default-action 'accept'

# IOT -> NETWORK
set firewall ipv4 name iot-network description 'From IOT to NETWORK'
set firewall ipv4 name iot-network default-action 'accept'

# KUBERNETES -> NETWORK
set firewall ipv4 name kubernetes-network description 'From KUBERNETES to NETWORK'
set firewall ipv4 name kubernetes-network default-action 'accept'

# TRUSTED -> NETWORK
set firewall ipv4 name trusted-network description 'From TRUSTED to NETWORK'
set firewall ipv4 name trusted-network default-action 'accept'

# WAN -> NETWORK
set firewall ipv4 name wan-network description 'From WAN to NETWORK'
set firewall ipv4 name wan-network default-action 'drop'
set firewall ipv4 name wan-network default-log

### Zone SERVERS ###

# LOCAL -> SERVERS
set firewall ipv4 name local-servers description 'From LOCAL to SERVERS'
set firewall ipv4 name local-servers default-action 'accept'

# Containers -> SERVERS
set firewall ipv4 name containers-servers description 'From Container to SERVERS'
set firewall ipv4 name containers-servers default-action 'accept'

# NETWORK -> SERVERS
set firewall ipv4 name network-servers description 'From NETWORK to SERVERS'
set firewall ipv4 name network-servers default-action 'accept'

# IOT -> SERVERS
set firewall ipv4 name iot-servers description 'From IOT to SERVERS'
set firewall ipv4 name iot-servers default-action 'accept'

# KUBERNETES -> SERVERS
set firewall ipv4 name kubernetes-servers description 'From KUBERNETES to SERVERS'
set firewall ipv4 name kubernetes-servers default-action 'accept'

# TRUSTED -> SERVERS
set firewall ipv4 name trusted-servers description 'From TRUSTED to SERVERS'
set firewall ipv4 name trusted-servers default-action 'accept'

# WAN -> SERVERS
set firewall ipv4 name wan-servers description 'From WAN to SERVERS'
set firewall ipv4 name wan-servers default-action 'drop'
set firewall ipv4 name wan-servers default-log
set firewall ipv4 name wan-servers rule 1 action 'accept'
set firewall ipv4 name wan-servers rule 1 description 'Rule: SSH jumphost'
set firewall ipv4 name wan-servers rule 1 destination address '10.1.2.66'
set firewall ipv4 name wan-servers rule 1 destination port 'ssh'
set firewall ipv4 name wan-servers rule 1 protocol 'udp'

### Zone IOT ###

# LOCAL -> IOT
set firewall ipv4 name local-iot description 'From LOCAL to IOT'
set firewall ipv4 name local-iot default-action 'accept'

# Containers -> IOT
set firewall ipv4 name containers-iot description 'From Container to IOT'
set firewall ipv4 name containers-iot default-action 'accept'

# NETWORK -> IOT
set firewall ipv4 name network-iot description 'From NETWORK to IOT'
set firewall ipv4 name network-iot default-action 'accept'

# SERVERS -> IOT
set firewall ipv4 name servers-iot description 'From IOT to IOT'
set firewall ipv4 name servers-iot default-action 'accept'

# KUBERNETES -> IOT
set firewall ipv4 name kubernetes-iot description 'From KUBERNETES to IOT'
set firewall ipv4 name kubernetes-iot default-action 'accept'

# TRUSTED -> IOT
set firewall ipv4 name trusted-iot description 'From TRUSTED to IOT'
set firewall ipv4 name trusted-iot default-action 'accept'

# WAN -> IOT
set firewall ipv4 name wan-iot description 'From WAN to IOT'
set firewall ipv4 name wan-iot default-action 'drop'
set firewall ipv4 name wan-iot default-log

# ### Zone KUBERNETES ###

# LOCAL -> KUBERNETES
set firewall ipv4 name local-kubernetes description 'From LOCAL to KUBERNETES'
set firewall ipv4 name local-kubernetes default-action 'accept'

# Containers -> KUBERNETES
set firewall ipv4 name containers-kubernetes description 'From Container to KUBERNETES'
set firewall ipv4 name containers-kubernetes default-action 'accept'

# NETWORK -> KUBERNETES
set firewall ipv4 name network-kubernetes description 'From NETWORK to KUBERNETES'
set firewall ipv4 name network-kubernetes default-action 'accept'

# SERVERS -> KUBERNETES
set firewall ipv4 name servers-kubernetes description 'From KUBERNETES to KUBERNETES'
set firewall ipv4 name servers-kubernetes default-action 'accept'

# IOT -> KUBERNETES
set firewall ipv4 name iot-kubernetes description 'From IOT to KUBERNETES'
set firewall ipv4 name iot-kubernetes default-action 'accept'

# TRUSTED -> KUBERNETES
set firewall ipv4 name trusted-kubernetes description 'From TRUSTED to KUBERNETES'
set firewall ipv4 name trusted-kubernetes default-action 'accept'

# WAN -> KUBERNETES
set firewall ipv4 name wan-kubernetes description 'From WAN to KUBERNETES'
set firewall ipv4 name wan-kubernetes default-action 'drop'
set firewall ipv4 name wan-kubernetes default-log
set firewall ipv4 name wan-kubernetes rule 1 description 'NAT: HTTP'
set firewall ipv4 name wan-kubernetes rule 1 action 'accept'
set firewall ipv4 name wan-kubernetes rule 1 destination address '192.168.3.2'
set firewall ipv4 name wan-kubernetes rule 1 destination port '80'
set firewall ipv4 name wan-kubernetes rule 1 protocol 'tcp'
set firewall ipv4 name wan-kubernetes rule 2 description 'NAT: HTTPS'
set firewall ipv4 name wan-kubernetes rule 2 action 'accept'
set firewall ipv4 name wan-kubernetes rule 2 destination address '192.168.3.2'
set firewall ipv4 name wan-kubernetes rule 2 destination port '443'
set firewall ipv4 name wan-kubernetes rule 2 protocol 'tcp'
set firewall ipv4 name wan-kubernetes rule 3 description 'NAT: TORRENT'
set firewall ipv4 name wan-kubernetes rule 3 action 'accept'
set firewall ipv4 name wan-kubernetes rule 3 destination address '192.168.3.4'
set firewall ipv4 name wan-kubernetes rule 3 destination port '51413'
set firewall ipv4 name wan-kubernetes rule 3 protocol 'tcp'
set firewall ipv4 name wan-kubernetes rule 4 description 'NAT: MINECRAFT'
set firewall ipv4 name wan-kubernetes rule 4 action 'accept'
set firewall ipv4 name wan-kubernetes rule 4 destination address '192.168.3.10'
set firewall ipv4 name wan-kubernetes rule 4 destination port '25565'
set firewall ipv4 name wan-kubernetes rule 4 protocol 'tcp'

### Zone TRUSTED ###

# LOCAL -> TRUSTED
set firewall ipv4 name local-trusted description 'From LOCAL to TRUSTED'
set firewall ipv4 name local-trusted default-action 'accept'

# Containers -> TRUSTED
set firewall ipv4 name containers-trusted description 'From Container to TRUSTED'
set firewall ipv4 name containers-trusted default-action 'accept'

# NETWORK -> TRUSTED
set firewall ipv4 name network-trusted description 'From NETWORK to TRUSTED'
set firewall ipv4 name network-trusted default-action 'accept'

# SERVERS -> TRUSTED
set firewall ipv4 name servers-trusted description 'From TRUSTED to TRUSTED'
set firewall ipv4 name servers-trusted default-action 'accept'

# IOT -> TRUSTED
set firewall ipv4 name iot-trusted description 'From IOT to TRUSTED'
set firewall ipv4 name iot-trusted default-action 'accept'

# KUBERNETES -> TRUSTED
set firewall ipv4 name kubernetes-trusted description 'From KUBERNETES to TRUSTED'
set firewall ipv4 name kubernetes-trusted default-action 'accept'

# WAN -> TRUSTED
set firewall ipv4 name wan-trusted description 'From WAN to TRUSTED'
set firewall ipv4 name wan-trusted default-action 'drop'
set firewall ipv4 name wan-trusted default-log

### Zone WAN ###

# LOCAL -> WAN
set firewall ipv4 name local-wan description 'From LOCAL to WAN'
set firewall ipv4 name local-wan default-action 'accept'

# Containers -> WAN
set firewall ipv4 name containers-wan description 'From Container to WAN'
set firewall ipv4 name containers-wan default-action 'accept'

# NETWORK -> WAN
set firewall ipv4 name network-wan description 'From NETWORK to WAN'
set firewall ipv4 name network-wan default-action 'accept'

# SERVERS -> WAN
set firewall ipv4 name servers-wan description 'From WAN to WAN'
set firewall ipv4 name servers-wan default-action 'accept'

# IOT -> WAN
set firewall ipv4 name iot-wan description 'From IOT to WAN'
set firewall ipv4 name iot-wan default-action 'accept'

# KUBERNETES -> WAN
set firewall ipv4 name kubernetes-wan description 'From KUBERNETES to WAN'
set firewall ipv4 name kubernetes-wan default-action 'accept'

# TRUSTED -> WAN
set firewall ipv4 name trusted-wan description 'From TRUSTED to WAN'
set firewall ipv4 name trusted-wan default-action 'accept'