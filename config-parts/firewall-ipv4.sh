#!/bin/vbash

### Zone local ###

# CONTAINERS -> LOCAL
set firewall ipv4 name containers-local description 'From Containers to LOCAL'
set firewall ipv4 name containers-local default-action 'accept'
set firewall ipv4 name containers-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-local rule 999 state 'invalid'
set firewall ipv4 name containers-local rule 999 action 'accept'
set firewall ipv4 name containers-local rule 999 'log'

# NETWORK -> LOCAL
set firewall ipv4 name network-local description 'From NETWORK to LOCAL'
set firewall ipv4 name network-local default-action 'accept'
set firewall ipv4 name network-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name network-local rule 999 state 'invalid'
set firewall ipv4 name network-local rule 999 action 'accept'
set firewall ipv4 name network-local rule 999 log

# SERVERS -> LOCAL
set firewall ipv4 name servers-local description 'From SERVERS to LOCAL'
set firewall ipv4 name servers-local default-action 'accept'
set firewall ipv4 name servers-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-local rule 999 state 'invalid'
set firewall ipv4 name servers-local rule 999 action 'accept'
set firewall ipv4 name servers-local rule 999 log

# IOT -> LOCAL
set firewall ipv4 name iot-local description 'From IOT to LOCAL'
set firewall ipv4 name iot-local default-action 'accept'
set firewall ipv4 name iot-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-local rule 999 state 'invalid'
set firewall ipv4 name iot-local rule 999 action 'accept'
set firewall ipv4 name iot-local rule 999 log

# KUBERNETES -> LOCAL
set firewall ipv4 name kubernetes-local description 'From KUBERNETES to LOCAL'
set firewall ipv4 name kubernetes-local default-action 'accept'
set firewall ipv4 name kubernetes-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name kubernetes-local rule 999 state 'invalid'
set firewall ipv4 name kubernetes-local rule 999 action 'accept'
set firewall ipv4 name kubernetes-local rule 999 log

# TRUSTED -> LOCAL
set firewall ipv4 name trusted-local description 'From TRUSTED to LOCAL'
set firewall ipv4 name trusted-local default-action 'accept'
set firewall ipv4 name trusted-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-local rule 999 state 'invalid'
set firewall ipv4 name trusted-local rule 999 action 'accept'
set firewall ipv4 name trusted-local rule 999 log

# WAN -> LOCAL
set firewall ipv4 name wan-local description 'From WAN to LOCAL'
set firewall ipv4 name wan-local default-action 'drop'
# set firewall ipv4 name wan-local default-log
set firewall ipv4 name wan-local rule 100 action 'accept'
set firewall ipv4 name wan-local rule 100 description 'Rule: accept ICMP'
set firewall ipv4 name wan-local rule 100 protocol 'icmp'
set firewall ipv4 name wan-local rule 200 action 'accept'
set firewall ipv4 name wan-local rule 200 description 'Rule: accept_wireguard'
set firewall ipv4 name wan-local rule 200 destination group port-group 'wireguard'
set firewall ipv4 name wan-local rule 200 protocol 'udp'
set firewall ipv4 name wan-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-local rule 999 state 'invalid'
set firewall ipv4 name wan-local rule 999 action 'accept'
set firewall ipv4 name wan-local rule 999 log



### Zone Containers ###

# LOCAL -> Containers
set firewall ipv4 name local-containers description 'From LOCAL to Containers'
set firewall ipv4 name local-containers default-action 'accept'
set firewall ipv4 name local-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-containers rule 999 state 'invalid'
set firewall ipv4 name local-containers rule 999 action 'accept'
set firewall ipv4 name local-containers rule 999 log

# NETWORK -> Containers
set firewall ipv4 name network-containers description 'From NETWORK to Containers'
set firewall ipv4 name network-containers default-action 'accept'
set firewall ipv4 name network-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name network-containers rule 999 state 'invalid'
set firewall ipv4 name network-containers rule 999 action 'accept'
set firewall ipv4 name network-containers rule 999 log

# SERVERS -> Containers
set firewall ipv4 name servers-containers description 'From SERVERS to Containers'
set firewall ipv4 name servers-containers default-action 'accept'
set firewall ipv4 name servers-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-containers rule 999 state 'invalid'
set firewall ipv4 name servers-containers rule 999 action 'accept'
set firewall ipv4 name servers-containers rule 999 log

# IOT -> Containers
set firewall ipv4 name iot-containers description 'From IOT to Containers'
set firewall ipv4 name iot-containers default-action 'accept'
set firewall ipv4 name iot-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-containers rule 999 state 'invalid'
set firewall ipv4 name iot-containers rule 999 action 'accept'
set firewall ipv4 name iot-containers rule 999 log

# KUBERNETES -> Containers
set firewall ipv4 name kubernetes-containers description 'From KUBERNETES to Containers'
set firewall ipv4 name kubernetes-containers default-action 'accept'
set firewall ipv4 name kubernetes-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name kubernetes-containers rule 999 state 'invalid'
set firewall ipv4 name kubernetes-containers rule 999 action 'accept'
set firewall ipv4 name kubernetes-containers rule 999 log

# TRUSTED -> Containers
set firewall ipv4 name trusted-containers description 'From TRUSTED to Containers'
set firewall ipv4 name trusted-containers default-action 'accept'
set firewall ipv4 name trusted-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-containers rule 999 state 'invalid'
set firewall ipv4 name trusted-containers rule 999 action 'accept'
set firewall ipv4 name trusted-containers rule 999 log

# WAN -> Containers
set firewall ipv4 name wan-containers description 'From WAN to Containers'
set firewall ipv4 name wan-containers default-action 'drop'
set firewall ipv4 name wan-containers default-log
set firewall ipv4 name wan-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-containers rule 999 state 'invalid'
set firewall ipv4 name wan-containers rule 999 action 'accept'
set firewall ipv4 name wan-containers rule 999 log

### Zone NETWORK ###

# LOCAL -> NETWORK
set firewall ipv4 name local-network description 'From LOCAL to NETWORK'
set firewall ipv4 name local-network default-action 'accept'
set firewall ipv4 name local-network rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-network rule 999 state 'invalid'
set firewall ipv4 name local-network rule 999 action 'accept'
set firewall ipv4 name local-network rule 999 log

# Containers -> NETWORK
set firewall ipv4 name containers-network description 'From Container to NETWORK'
set firewall ipv4 name containers-network default-action 'accept'
set firewall ipv4 name containers-network rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-network rule 999 state 'invalid'
set firewall ipv4 name containers-network rule 999 action 'accept'
set firewall ipv4 name containers-network rule 999 log

# SERVERS -> NETWORK
set firewall ipv4 name servers-network description 'From SERVERS to NETWORK'
set firewall ipv4 name servers-network default-action 'accept'
set firewall ipv4 name servers-network rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-network rule 999 state 'invalid'
set firewall ipv4 name servers-network rule 999 action 'accept'
set firewall ipv4 name servers-network rule 999 log

# IOT -> NETWORK
set firewall ipv4 name iot-network description 'From IOT to NETWORK'
set firewall ipv4 name iot-network default-action 'accept'
set firewall ipv4 name iot-network rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-network rule 999 state 'invalid'
set firewall ipv4 name iot-network rule 999 action 'accept'
set firewall ipv4 name iot-network rule 999 log

# KUBERNETES -> NETWORK
set firewall ipv4 name kubernetes-network description 'From KUBERNETES to NETWORK'
set firewall ipv4 name kubernetes-network default-action 'accept'
set firewall ipv4 name kubernetes-network rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name kubernetes-network rule 999 state 'invalid'
set firewall ipv4 name kubernetes-network rule 999 action 'accept'
set firewall ipv4 name kubernetes-network rule 999 log

# TRUSTED -> NETWORK
set firewall ipv4 name trusted-network description 'From TRUSTED to NETWORK'
set firewall ipv4 name trusted-network default-action 'accept'
set firewall ipv4 name trusted-network rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-network rule 999 state 'invalid'
set firewall ipv4 name trusted-network rule 999 action 'accept'
set firewall ipv4 name trusted-network rule 999 log

# WAN -> NETWORK
set firewall ipv4 name wan-network description 'From WAN to NETWORK'
set firewall ipv4 name wan-network default-action 'drop'
set firewall ipv4 name wan-network default-log
set firewall ipv4 name wan-network rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-network rule 999 state 'invalid'
set firewall ipv4 name wan-network rule 999 action 'accept'
set firewall ipv4 name wan-network rule 999 log

### Zone SERVERS ###

# LOCAL -> SERVERS
set firewall ipv4 name local-servers description 'From LOCAL to SERVERS'
set firewall ipv4 name local-servers default-action 'accept'
set firewall ipv4 name local-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-servers rule 999 state 'invalid'
set firewall ipv4 name local-servers rule 999 action 'accept'
set firewall ipv4 name local-servers rule 999 log

# Containers -> SERVERS
set firewall ipv4 name containers-servers description 'From Container to SERVERS'
set firewall ipv4 name containers-servers default-action 'accept'
set firewall ipv4 name containers-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-servers rule 999 state 'invalid'
set firewall ipv4 name containers-servers rule 999 action 'accept'
set firewall ipv4 name containers-servers rule 999 log

# NETWORK -> SERVERS
set firewall ipv4 name network-servers description 'From NETWORK to SERVERS'
set firewall ipv4 name network-servers default-action 'accept'
set firewall ipv4 name network-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name network-servers rule 999 state 'invalid'
set firewall ipv4 name network-servers rule 999 action 'accept'
set firewall ipv4 name network-servers rule 999 log

# IOT -> SERVERS
set firewall ipv4 name iot-servers description 'From IOT to SERVERS'
set firewall ipv4 name iot-servers default-action 'accept'
set firewall ipv4 name iot-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-servers rule 999 state 'invalid'
set firewall ipv4 name iot-servers rule 999 action 'accept'
set firewall ipv4 name iot-servers rule 999 log

# KUBERNETES -> SERVERS
set firewall ipv4 name kubernetes-servers description 'From KUBERNETES to SERVERS'
set firewall ipv4 name kubernetes-servers default-action 'accept'
set firewall ipv4 name kubernetes-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name kubernetes-servers rule 999 state 'invalid'
set firewall ipv4 name kubernetes-servers rule 999 action 'accept'
set firewall ipv4 name kubernetes-servers rule 999 log

# TRUSTED -> SERVERS
set firewall ipv4 name trusted-servers description 'From TRUSTED to SERVERS'
set firewall ipv4 name trusted-servers default-action 'accept'
set firewall ipv4 name trusted-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-servers rule 999 state 'invalid'
set firewall ipv4 name trusted-servers rule 999 action 'accept'
set firewall ipv4 name trusted-servers rule 999 log

# WAN -> SERVERS
set firewall ipv4 name wan-servers description 'From WAN to SERVERS'
set firewall ipv4 name wan-servers default-action 'drop'
set firewall ipv4 name wan-servers default-log
set firewall ipv4 name wan-servers rule 100 action 'accept'
set firewall ipv4 name wan-servers rule 100 description 'Rule: SSH jumphost'
set firewall ipv4 name wan-servers rule 100 destination address '10.1.2.66'
set firewall ipv4 name wan-servers rule 100 destination port 'ssh'
set firewall ipv4 name wan-servers rule 100 protocol 'tcp'
set firewall ipv4 name wan-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-servers rule 999 state 'invalid'
set firewall ipv4 name wan-servers rule 999 action 'accept'
set firewall ipv4 name wan-servers rule 999 log

### Zone IOT ###

# LOCAL -> IOT
set firewall ipv4 name local-iot description 'From LOCAL to IOT'
set firewall ipv4 name local-iot default-action 'accept'
set firewall ipv4 name local-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-iot rule 999 state 'invalid'
set firewall ipv4 name local-iot rule 999 action 'accept'
set firewall ipv4 name local-iot rule 999 log

# Containers -> IOT
set firewall ipv4 name containers-iot description 'From Container to IOT'
set firewall ipv4 name containers-iot default-action 'accept'
set firewall ipv4 name containers-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-iot rule 999 state 'invalid'
set firewall ipv4 name containers-iot rule 999 action 'accept'
set firewall ipv4 name containers-iot rule 999 log

# NETWORK -> IOT
set firewall ipv4 name network-iot description 'From NETWORK to IOT'
set firewall ipv4 name network-iot default-action 'accept'
set firewall ipv4 name network-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name network-iot rule 999 state 'invalid'
set firewall ipv4 name network-iot rule 999 action 'accept'
set firewall ipv4 name network-iot rule 999 log

# SERVERS -> IOT
set firewall ipv4 name servers-iot description 'From IOT to IOT'
set firewall ipv4 name servers-iot default-action 'accept'
set firewall ipv4 name servers-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-iot rule 999 state 'invalid'
set firewall ipv4 name servers-iot rule 999 action 'accept'
set firewall ipv4 name servers-iot rule 999 log

# KUBERNETES -> IOT
set firewall ipv4 name kubernetes-iot description 'From KUBERNETES to IOT'
set firewall ipv4 name kubernetes-iot default-action 'accept'
set firewall ipv4 name kubernetes-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name kubernetes-iot rule 999 state 'invalid'
set firewall ipv4 name kubernetes-iot rule 999 action 'accept'
set firewall ipv4 name kubernetes-iot rule 999 log

# TRUSTED -> IOT
set firewall ipv4 name trusted-iot description 'From TRUSTED to IOT'
set firewall ipv4 name trusted-iot default-action 'accept'
set firewall ipv4 name trusted-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-iot rule 999 state 'invalid'
set firewall ipv4 name trusted-iot rule 999 action 'accept'
set firewall ipv4 name trusted-iot rule 999 log

# WAN -> IOT
set firewall ipv4 name wan-iot description 'From WAN to IOT'
set firewall ipv4 name wan-iot default-action 'drop'
set firewall ipv4 name wan-iot default-log
set firewall ipv4 name wan-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-iot rule 999 state 'invalid'
set firewall ipv4 name wan-iot rule 999 action 'accept'
set firewall ipv4 name wan-iot rule 999 log

# ### Zone KUBERNETES ###

# LOCAL -> KUBERNETES
set firewall ipv4 name local-kubernetes description 'From LOCAL to KUBERNETES'
set firewall ipv4 name local-kubernetes default-action 'accept'
set firewall ipv4 name local-kubernetes rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-kubernetes rule 999 state 'invalid'
set firewall ipv4 name local-kubernetes rule 999 action 'accept'
set firewall ipv4 name local-kubernetes rule 999 log

# Containers -> KUBERNETES
set firewall ipv4 name containers-kubernetes description 'From Container to KUBERNETES'
set firewall ipv4 name containers-kubernetes default-action 'accept'
set firewall ipv4 name containers-kubernetes rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-kubernetes rule 999 state 'invalid'
set firewall ipv4 name containers-kubernetes rule 999 action 'accept'
set firewall ipv4 name containers-kubernetes rule 999 log

# NETWORK -> KUBERNETES
set firewall ipv4 name network-kubernetes description 'From NETWORK to KUBERNETES'
set firewall ipv4 name network-kubernetes default-action 'accept'
set firewall ipv4 name network-kubernetes rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name network-kubernetes rule 999 state 'invalid'
set firewall ipv4 name network-kubernetes rule 999 action 'accept'
set firewall ipv4 name network-kubernetes rule 999 log

# SERVERS -> KUBERNETES
set firewall ipv4 name servers-kubernetes description 'From KUBERNETES to KUBERNETES'
set firewall ipv4 name servers-kubernetes default-action 'accept'
set firewall ipv4 name servers-kubernetes rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-kubernetes rule 999 state 'invalid'
set firewall ipv4 name servers-kubernetes rule 999 action 'accept'
set firewall ipv4 name servers-kubernetes rule 999 log

# IOT -> KUBERNETES
set firewall ipv4 name iot-kubernetes description 'From IOT to KUBERNETES'
set firewall ipv4 name iot-kubernetes default-action 'accept'
set firewall ipv4 name iot-kubernetes rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-kubernetes rule 999 state 'invalid'
set firewall ipv4 name iot-kubernetes rule 999 action 'accept'
set firewall ipv4 name iot-kubernetes rule 999 log

# TRUSTED -> KUBERNETES
set firewall ipv4 name trusted-kubernetes description 'From TRUSTED to KUBERNETES'
set firewall ipv4 name trusted-kubernetes default-action 'accept'
set firewall ipv4 name trusted-kubernetes rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-kubernetes rule 999 state 'invalid'
set firewall ipv4 name trusted-kubernetes rule 999 action 'accept'
set firewall ipv4 name trusted-kubernetes rule 999 log

# WAN -> KUBERNETES
set firewall ipv4 name wan-kubernetes description 'From WAN to KUBERNETES'
set firewall ipv4 name wan-kubernetes default-action 'drop'
set firewall ipv4 name wan-kubernetes default-log
set firewall ipv4 name wan-kubernetes rule 100 description 'NAT: HTTP'
set firewall ipv4 name wan-kubernetes rule 100 action 'accept'
set firewall ipv4 name wan-kubernetes rule 100 destination address '192.168.3.2'
set firewall ipv4 name wan-kubernetes rule 100 destination port '80'
set firewall ipv4 name wan-kubernetes rule 100 protocol 'tcp'
set firewall ipv4 name wan-kubernetes rule 200 description 'NAT: HTTPS'
set firewall ipv4 name wan-kubernetes rule 200 action 'accept'
set firewall ipv4 name wan-kubernetes rule 200 destination address '192.168.3.2'
set firewall ipv4 name wan-kubernetes rule 200 destination port '443'
set firewall ipv4 name wan-kubernetes rule 200 protocol 'tcp'
set firewall ipv4 name wan-kubernetes rule 300 description 'NAT: TORRENT'
set firewall ipv4 name wan-kubernetes rule 300 action 'accept'
set firewall ipv4 name wan-kubernetes rule 300 destination address '192.168.3.4'
set firewall ipv4 name wan-kubernetes rule 300 destination port '51413'
set firewall ipv4 name wan-kubernetes rule 300 protocol 'tcp'
set firewall ipv4 name wan-kubernetes rule 400 description 'NAT: MINECRAFT'
set firewall ipv4 name wan-kubernetes rule 400 action 'accept'
set firewall ipv4 name wan-kubernetes rule 400 destination address '192.168.3.10'
set firewall ipv4 name wan-kubernetes rule 400 destination port '25565'
set firewall ipv4 name wan-kubernetes rule 400 protocol 'tcp'
set firewall ipv4 name wan-kubernetes rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-kubernetes rule 999 state 'invalid'
set firewall ipv4 name wan-kubernetes rule 999 action 'accept'
set firewall ipv4 name wan-kubernetes rule 999 log

### Zone TRUSTED ###

# LOCAL -> TRUSTED
set firewall ipv4 name local-trusted description 'From LOCAL to TRUSTED'
set firewall ipv4 name local-trusted default-action 'accept'
set firewall ipv4 name local-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-trusted rule 999 state 'invalid'
set firewall ipv4 name local-trusted rule 999 action 'accept'
set firewall ipv4 name local-trusted rule 999 log

# Containers -> TRUSTED
set firewall ipv4 name containers-trusted description 'From Container to TRUSTED'
set firewall ipv4 name containers-trusted default-action 'accept'
set firewall ipv4 name containers-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-trusted rule 999 state 'invalid'
set firewall ipv4 name containers-trusted rule 999 action 'accept'
set firewall ipv4 name containers-trusted rule 999 log

# NETWORK -> TRUSTED
set firewall ipv4 name network-trusted description 'From NETWORK to TRUSTED'
set firewall ipv4 name network-trusted default-action 'accept'
set firewall ipv4 name network-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name network-trusted rule 999 state 'invalid'
set firewall ipv4 name network-trusted rule 999 action 'accept'
set firewall ipv4 name network-trusted rule 999 log

# SERVERS -> TRUSTED
set firewall ipv4 name servers-trusted description 'From TRUSTED to TRUSTED'
set firewall ipv4 name servers-trusted default-action 'accept'
set firewall ipv4 name servers-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-trusted rule 999 state 'invalid'
set firewall ipv4 name servers-trusted rule 999 action 'accept'
set firewall ipv4 name servers-trusted rule 999 log

# IOT -> TRUSTED
set firewall ipv4 name iot-trusted description 'From IOT to TRUSTED'
set firewall ipv4 name iot-trusted default-action 'accept'
set firewall ipv4 name iot-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-trusted rule 999 state 'invalid'
set firewall ipv4 name iot-trusted rule 999 action 'accept'
set firewall ipv4 name iot-trusted rule 999 log

# KUBERNETES -> TRUSTED
set firewall ipv4 name kubernetes-trusted description 'From KUBERNETES to TRUSTED'
set firewall ipv4 name kubernetes-trusted default-action 'accept'
set firewall ipv4 name kubernetes-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name kubernetes-trusted rule 999 state 'invalid'
set firewall ipv4 name kubernetes-trusted rule 999 action 'accept'
set firewall ipv4 name kubernetes-trusted rule 999 log

# WAN -> TRUSTED
set firewall ipv4 name wan-trusted description 'From WAN to TRUSTED'
set firewall ipv4 name wan-trusted default-action 'drop'
set firewall ipv4 name wan-trusted default-log
set firewall ipv4 name wan-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-trusted rule 999 state 'invalid'
set firewall ipv4 name wan-trusted rule 999 action 'accept'
set firewall ipv4 name wan-trusted rule 999 log

### Zone WAN ###

# LOCAL -> WAN
set firewall ipv4 name local-wan description 'From LOCAL to WAN'
set firewall ipv4 name local-wan default-action 'accept'
set firewall ipv4 name local-wan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-wan rule 999 state 'invalid'
set firewall ipv4 name local-wan rule 999 action 'accept'
set firewall ipv4 name local-wan rule 999 log

# Containers -> WAN
set firewall ipv4 name containers-wan description 'From Container to WAN'
set firewall ipv4 name containers-wan default-action 'accept'
set firewall ipv4 name containers-wan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-wan rule 999 state 'invalid'
set firewall ipv4 name containers-wan rule 999 action 'accept'
set firewall ipv4 name containers-wan rule 999 log

# NETWORK -> WAN
set firewall ipv4 name network-wan description 'From NETWORK to WAN'
set firewall ipv4 name network-wan default-action 'accept'
set firewall ipv4 name network-wan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name network-wan rule 999 state 'invalid'
set firewall ipv4 name network-wan rule 999 action 'accept'
set firewall ipv4 name network-wan rule 999 log

# SERVERS -> WAN
set firewall ipv4 name servers-wan description 'From WAN to WAN'
set firewall ipv4 name servers-wan default-action 'accept'
set firewall ipv4 name servers-wan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-wan rule 999 state 'invalid'
set firewall ipv4 name servers-wan rule 999 action 'accept'
set firewall ipv4 name servers-wan rule 999 log

# IOT -> WAN
set firewall ipv4 name iot-wan description 'From IOT to WAN'
set firewall ipv4 name iot-wan default-action 'accept'
set firewall ipv4 name iot-wan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-wan rule 999 state 'invalid'
set firewall ipv4 name iot-wan rule 999 action 'accept'
set firewall ipv4 name iot-wan rule 999 log

# KUBERNETES -> WAN
set firewall ipv4 name kubernetes-wan description 'From KUBERNETES to WAN'
set firewall ipv4 name kubernetes-wan default-action 'accept'
set firewall ipv4 name kubernetes-wan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name kubernetes-wan rule 999 state 'invalid'
set firewall ipv4 name kubernetes-wan rule 999 action 'accept'
set firewall ipv4 name kubernetes-wan rule 999 log

# TRUSTED -> WAN
set firewall ipv4 name trusted-wan description 'From TRUSTED to WAN'
set firewall ipv4 name trusted-wan default-action 'accept'
set firewall ipv4 name trusted-wan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-wan rule 999 state 'invalid'
set firewall ipv4 name trusted-wan rule 999 action 'accept'
set firewall ipv4 name trusted-wan rule 999 log