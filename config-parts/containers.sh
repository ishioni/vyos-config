#!/bin/vbash
# shellcheck disable=all

# Container networks
set container network services description 'Network for VyOS containers'
set container network services prefix '10.5.0.0/24'

# cloudflare-ddns
set container name cloudflare-ddns allow-host-networks
set container name cloudflare-ddns environment CF_API_TOKEN value "${SECRET_CLOUDFLARE_DYNDNS_TOKEN}"
set container name cloudflare-ddns environment DOMAINS value "${SECRET_DOMAIN}"
set container name cloudflare-ddns environment IP6_PROVIDER value "none"
set container name cloudflare-ddns environment TZ value 'Europe/Warsaw'
set container name cloudflare-ddns environment PGID value "1000"
set container name cloudflare-ddns environment PUID value "1000"
set container name cloudflare-ddns image 'docker.io/favonia/cloudflare-ddns:1.11.0'
set container name cloudflare-ddns memory '0'
set container name cloudflare-ddns restart 'on-failure'
set container name cloudflare-ddns shared-memory '0'

# adguard
set container name adguard image 'docker.io/adguard/adguardhome:v0.107.43'
set container name adguard memory '0'
set container name adguard network services address '10.5.0.3'
set container name adguard restart 'on-failure'
set container name adguard shared-memory '0'
set container name adguard environment LISTEN_ADDR value '10.5.0.3'
set container name adguard volume work source '/config/containers/adguard/work'
set container name adguard volume work destination '/opt/adguardhome/work'
set container name adguard volume work mode 'rw'
set container name adguard volume conf source '/config/containers/adguard/conf'
set container name adguard volume conf destination '/opt/adguardhome/conf'
set container name adguard volume conf mode 'rw'

# unifi
# set container name unifi environment TZ value 'Europe/Warsaw'
# set container name unifi environment BIND_PRIV value 'true'
# set container name unifi environment RUNAS_UID0 value 'false'
# set container name unifi environment PGID value '999'
# set container name unifi environment PUID value '999'
# set container name unifi image 'ghcr.io/goofball222/unifi:8.0.24'
# set container name unifi memory '0'
# set container name unifi network services address '10.5.0.2'
# set container name unifi restart 'on-failure'
# set container name unifi shared-memory '0'
# set container name unifi volume cert source '/config/containers/unifi/cert'
# set container name unifi volume cert destination '/usr/lib/unifi/cert'
# set container name unifi volume cert mode 'rw'
# set container name unifi volume data source '/config/containers/unifi/data'
# set container name unifi volume data destination '/usr/lib/unifi/data'
# set container name unifi volume data mode 'rw'
# set container name unifi volume logs source '/config/containers/unifi/logs'
# set container name unifi volume logs destination '/usr/lib/unifi/logs'
# set container name unifi volume logs mode 'rw'
# set container name unifi cap-add 'net-bind-service'