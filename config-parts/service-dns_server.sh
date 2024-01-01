#!/bin/vbash

set service dns forwarding name-server '10.5.0.3' port 53

# NETWORK
set service dns forwarding allow-from '10.1.1.0/24'
set service dns forwarding listen-address '10.1.1.1'
set service dns forwarding authoritative-domain rootnode.network."${SECRET_DOMAIN}" records a @ address '10.1.1.1'
set service dns forwarding authoritative-domain '1.1.1.10.in-addr.arpa' records ptr @ target rootnode.network."${SECRET_DOMAIN}"

# SERVERS
set service dns forwarding allow-from '10.1.2.0/24'
set service dns forwarding listen-address '10.1.2.1'
set service dns forwarding authoritative-domain rootnode.servers."${SECRET_DOMAIN}" records a @ address '10.1.2.1'
set service dns forwarding authoritative-domain '1.2.1.10.in-addr.arpa' records ptr @ target rootnode.servers."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain quadrant.servers."${SECRET_DOMAIN}" records a @ address '10.1.2.2'
set service dns forwarding authoritative-domain '2.2.1.10.in-addr.arpa' records ptr @ target quadrant.servers."${SECRET_DOMAIN}"
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

# IOT
set service dns forwarding allow-from '10.1.3.0/24'
set service dns forwarding listen-address '10.1.3.1'
set service dns forwarding authoritative-domain rootnode.iot."${SECRET_DOMAIN}" records a @ address '10.1.3.1'
set service dns forwarding authoritative-domain '1.3.1.10.in-addr.arpa' records ptr @ target rootnode.iot."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain quadrant.iot."${SECRET_DOMAIN}" records a @ address '10.1.3.2'
set service dns forwarding authoritative-domain '2.3.1.10.in-addr.arpa' records ptr @ target quadrant.iot."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain rxv679.iot."${SECRET_DOMAIN}" records a @ address '10.1.3.4'
set service dns forwarding authoritative-domain '4.3.1.10.in-addr.arpa' records ptr @ target rxv679.iot."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain thesucc.iot."${SECRET_DOMAIN}" records a @ address '10.1.3.6'
set service dns forwarding authoritative-domain '6.3.1.10.in-addr.arpa' records ptr @ target thesucc.iot."${SECRET_DOMAIN}"

# KUBERNETES
set service dns forwarding allow-from '10.1.4.0/24'
set service dns forwarding listen-address '10.1.4.1'
set service dns forwarding authoritative-domain rootnode.kubernetes.internal records a @ address '10.1.4.1'
set service dns forwarding authoritative-domain '1.4.1.10.in-addr.arpa' records ptr @ target rootnode.kubernetes.internal
set service dns forwarding authoritative-domain quadrant.kubernetes.internal records a @ address '10.1.4.2'
set service dns forwarding authoritative-domain '2.4.1.10.in-addr.arpa' records ptr @ target quadrant.kubernetes.internal
set service dns forwarding authoritative-domain talos.kubernetes.internal records a @ address '10.1.4.19'
set service dns forwarding authoritative-domain '19.4.1.10.in-addr.arpa' records ptr @ target talos.kubernetes.internal

# TRUSTED
set service dns forwarding allow-from '10.1.5.0/24'
set service dns forwarding listen-address '10.1.5.1'
# set service dns forwarding listen-address '10.254.254.1' #Broken, fix it later
set service dns forwarding authoritative-domain rootnode.trusted."${SECRET_DOMAIN}" records a @ address '10.1.5.1'
set service dns forwarding authoritative-domain '1.5.1.10.in-addr.arpa' records ptr @ target rootnode.trusted."${SECRET_DOMAIN}"
set service dns forwarding authoritative-domain quadrant.trusted."${SECRET_DOMAIN}" records a @ address '10.1.5.2'
set service dns forwarding authoritative-domain '2.5.1.10.in-addr.arpa' records ptr @ target quadrant.trusted."${SECRET_DOMAIN}"

# FORWARDING
set service dns forwarding domain gierzwald.internal name-server '10.2.1.1'
set service dns forwarding domain internal.movishell.pl name-server '192.168.3.1'
set service dns forwarding domain services.movishell.pl name-server '10.1.4.128'
