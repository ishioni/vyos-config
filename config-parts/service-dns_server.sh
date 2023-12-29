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
set service dns forwarding allow-from '10.1.4.0/24'
set service dns forwarding listen-address '10.1.4.1'

# TRUSTED
set service dns forwarding allow-from '10.1.5.0/24'
set service dns forwarding listen-address '10.1.5.1'

# FORWARDING
set service dns forwarding authoritative-domain truenas.servers."${SECRET_DOMAIN}" records a @ address '10.1.2.2'
set service dns forwarding authoritative-domain '2.2.1.10.in-addr.arpa' records ptr @ target truenas.servers."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain proxmox-1.servers."${SECRET_DOMAIN}" records a @ address '10.1.2.3'
set service dns forwarding authoritative-domain '3.2.1.10.in-addr.arpa' records ptr @ target proxmox-1.servers."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain proxmox-2.servers."${SECRET_DOMAIN}" records a @ address '10.1.2.4'
set service dns forwarding authoritative-domain '4.2.1.10.in-addr.arpa' records ptr @ target proxmox-2.servers."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain proxmox-3.servers."${SECRET_DOMAIN}" records a @ address '10.1.2.5'
set service dns forwarding authoritative-domain '5.2.1.10.in-addr.arpa' records ptr @ target proxmox-3.servers."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain proxmox-4.servers."${SECRET_DOMAIN}" records a @ address '10.1.2.6'
set service dns forwarding authoritative-domain '6.2.1.10.in-addr.arpa' records ptr @ target proxmox-4.servers."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain unifi.servers."${SECRET_DOMAIN}" records a @ address '10.5.0.2'
set service dns forwarding authoritative-domain '2.0.5.10.in-addr.arpa' records ptr @ target unifi.servers."${SECRET_DOMAIN}"
set service dns forwarding domain gierzwald.internal name-server '10.2.1.1'
set service dns forwarding domain internal.movishell.pl name-server '192.168.3.1'
set service dns forwarding domain services.movishell.pl name-server '10.1.4.128'
