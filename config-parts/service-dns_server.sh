#!/bin/vbash

# NETWORK
set service dns forwarding allow-from '10.1.1.0/24'
set service dns forwarding listen-address '10.1.1.1'

# SERVERS
set service dns forwarding allow-from '10.1.2.0/24'
set service dns forwarding listen-address '10.1.2.1'

# IOT
set service dns forwarding allow-from '10.1.3.0/24'
set service dns forwarding listen-address '10.1.3.1'

# KUBERNETES
# set service dns forwarding allow-from '10.1.4.0/24'
# set service dns forwarding listen-address '10.1.4.1'

# TRUSTED
set service dns forwarding allow-from '10.1.5.0/24'
set service dns forwarding listen-address '10.1.5.1'

# FORWARDING
set service dns forwarding authoritative-domain truenas.services."${SECRET_DOMAIN}" records a @ address '192.168.1.2'
set service dns forwarding authoritative-domain '2.1.168.192.in-addr.arpa' records ptr @ target truenas.services."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain proxmox-1.services."${SECRET_DOMAIN}" records a @ address '192.168.1.3'
set service dns forwarding authoritative-domain '3.1.168.192.in-addr.arpa' records ptr @ target proxmox-1.services."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain proxmox-2.services."${SECRET_DOMAIN}" records a @ address '192.168.1.4'
set service dns forwarding authoritative-domain '4.1.168.192.in-addr.arpa' records ptr @ target proxmox-2.services."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain proxmox-3.services."${SECRET_DOMAIN}" records a @ address '192.168.1.5'
set service dns forwarding authoritative-domain '5.1.168.192.in-addr.arpa' records ptr @ target proxmox-3.services."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain proxmox-4.services."${SECRET_DOMAIN}" records a @ address '192.168.1.6'
set service dns forwarding authoritative-domain '6.1.168.192.in-addr.arpa' records ptr @ target proxmox-4.services."${SECRET_DOMAIN}"
set service dns forwarding domain gierzwald.internal name-server '10.2.1.1'
set service dns forwarding domain internal.movishell.pl name-server '192.168.3.1'
set service dns forwarding domain services.movishell.pl name-server '10.1.4.128'
