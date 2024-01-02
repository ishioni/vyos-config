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

# DDNS
set service dns dynamic interface eth0 service cloudflare protocol 'cloudflare'
set service dns dynamic interface eth0 service cloudflare host-name ${SECRET_DOMAIN}
set service dns dynamic interface eth0 service cloudflare login ${SECRET_CLOUDFLARE_LOGIN}
set service dns dynamic interface eth0 service cloudflare password ${SECRET_CLOUDFLARE_PASSWORD}
set service dns dynamic interface eth0 service cloudflare zone ${SECRET_DOMAIN}
set service dns dynamic interface eth0 use-web url 'http://checkip.dyndns.com/'
set service dns dynamic interface eth0 use-web skip 'Current IP Address: '

}