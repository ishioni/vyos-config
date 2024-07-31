#!/bin/vbash

# ### Zone local ###
create-firewall-rules local
  to-vlan containers accept
  to-vlan network accept
  to-vlan servers accept
  to-vlan iot accept
  to-vlan trusted accept
  to-vlan ucglan accept
  to-vlan wan accept

# ### Zone Containers ###
create-firewall-rules containers
  interfaces pod-services
  to-vlan local accept
  to-vlan network accept
  to-vlan servers accept
  to-vlan iot accept
  to-vlan trusted accept
  to-vlan ucglan accept
  to-vlan wan accept

# ### Zone Network ###
create-firewall-rules network
  interfaces eth6
  to-vlan local accept
  to-vlan containers accept
  to-vlan servers accept
  to-vlan iot accept
  to-vlan trusted accept
  to-vlan ucglan accept
  to-vlan wan accept

# ### Zone Servers ###
create-firewall-rules servers
  interfaces eth6.2
  to-vlan local accept
  to-vlan containers accept
  to-vlan network accept
  to-vlan iot accept
  to-vlan trusted accept
  to-vlan ucglan accept
  to-vlan wan accept

# ### Zone IoT ###
create-firewall-rules iot
  interfaces eth6.3
  to-vlan local accept
  to-vlan containers accept
  to-vlan network accept
  to-vlan servers accept
  to-vlan trusted accept
  to-vlan ucglan accept
  to-vlan wan accept

# ### Zone Trusted ###
create-firewall-rules trusted
  interfaces eth6.5 wg0
  to-vlan local accept
  to-vlan containers accept
  to-vlan network accept
  to-vlan servers accept
  to-vlan iot accept
  to-vlan ucglan accept
  to-vlan wan accept

create-firewall-rules ucglan
  interfaces eth6.55
  to-vlan local accept
  to-vlan containers accept
  to-vlan network accept
  to-vlan servers accept
  to-vlan iot accept
  to-vlan trusted accept
  to-vlan wan accept

# ### Zone WAN ###
create-firewall-rules wan
  interfaces pppoe0
  to-vlan local drop
    allow-traffic wireguard icmp
  to-vlan containers drop
  to-vlan network drop
  to-vlan servers drop
    allow-traffic ssh http https torrent
  to-vlan iot drop
  to-vlan trusted drop
  to-vlan ucglan drop
