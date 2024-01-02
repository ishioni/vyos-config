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
set service mdns repeater interface br0.3
set service mdns repeater interface br0.5

# LLDP
set service lldp interface all

# Broken!
# # DDNS
# set service dns dynamic name cloudflare address web # Change this back once we're done!
# set service dns dynamic name cloudflare protocol cloudflare
# set service dns dynamic name cloudflare host-name ${SECRET_DOMAIN}
# set service dns dynamic name cloudflare username ${SECRET_CLOUDFLARE_LOGIN}
# set service dns dynamic name cloudflare password ${SECRET_CLOUDFLARE_PASSWORD}
# set service dns dynamic name cloudflare zone ${SECRET_DOMAIN}
# set service dns dynamic name cloudflare web-options url 'http://checkip.dyndns.com/'
# set service dns dynamic name cloudflare web-options skip 'Current IP Address: '
