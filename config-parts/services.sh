#!/bin/vbash

# NTP server
delete service ntp allow-client
set service ntp allow-client address '127.0.0.0/8'
set service ntp allow-client address '10.0.0.0/8'
set service ntp allow-client address '172.16.0.0/12'
set service ntp allow-client address '192.168.0.0/16'
delete service ntp server
set service ntp server pl.pool.ntp.org

# SSH server
set service ssh disable-password-authentication
set service ssh port '22'

# mDNS server
set service mdns repeater interface eth6.3
set service mdns repeater interface eth6.5

# LLDP
set service lldp interface all

# DDNS
set service dns dynamic name cloudflare address interface 'pppoe0'
set service dns dynamic name cloudflare protocol 'cloudflare'
set service dns dynamic name cloudflare host-name 'external.movishell.pl'
set service dns dynamic name cloudflare username 'token'
set service dns dynamic name cloudflare password "${SECRET_CLOUDFLARE_DYNDNS_TOKEN}"
set service dns dynamic name cloudflare zone 'movishell.pl'
