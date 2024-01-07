#!/bin/vbash
# shellcheck disable=all

# Container networks
set container network services description 'Network for VyOS containers'
set container network services prefix '10.5.0.0/24'

# dnsdist
set container name dnsdist allow-host-networks
set container name dnsdist cap-add 'net-bind-service'
set container name dnsdist environment TZ value 'Europe/Warsaw'
set container name dnsdist image 'docker.io/powerdns/dnsdist-18:1.8.3'
set container name dnsdist arguments '--log-timestamps'
set container name dnsdist memory '0'
set container name dnsdist restart 'on-failure'
set container name dnsdist shared-memory '0'
set container name dnsdist volume config source '/config/containers/dnsdist/config/dnsdist.conf'
set container name dnsdist volume config destination '/etc/dnsdist/dnsdist.conf'
set container name dnsdist volume config mode 'ro'

# bind
set container name bind cap-add 'net-bind-service'
set container name bind image 'docker.io/internetsystemsconsortium/bind9:9.19'
set container name bind command '/usr/sbin/named -4 -f -c /etc/bind/named.conf -u bind'
set container name bind memory '0'
set container name bind network services address '10.5.0.3'
set container name bind restart 'on-failure'
set container name bind shared-memory '0'
set container name bind volume config destination '/etc/bind'
set container name bind volume config source '/config/containers/bind/config'
set container name bind volume config mode 'ro'
set container name bind volume cache source '/config/bind/cache'
set container name bind volume cache destination '/var/cache/bind'
set container name bind volume cache mode 'rw'

# unifi
# set container name unifi environment TZ value 'Europe/Warsaw'
# set container name unifi environment BIND_PRIV value 'true'
# set container name unifi environment RUNAS_UID0 value 'false'
# set container name unifi environment PGID value '999'
# set container name unifi environment PUID value '999'
# set container name unifi image 'ghcr.io/goofball222/unifi:8.0.24'
# set container name unifi memory '0'
# set container name unifi network services address '10.5.0.10'
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

# cloudflare-ddns
# set container name cloudflare-ddns allow-host-networks
# set container name cloudflare-ddns environment CF_API_TOKEN value "${SECRET_CLOUDFLARE_DYNDNS_TOKEN}"
# set container name cloudflare-ddns environment DOMAINS value "${SECRET_DOMAIN}"
# set container name cloudflare-ddns environment IP6_PROVIDER value "none"
# set container name cloudflare-ddns environment TZ value 'Europe/Warsaw'
# set container name cloudflare-ddns environment PGID value "1000"
# set container name cloudflare-ddns environment PUID value "1000"
# set container name cloudflare-ddns image 'docker.io/favonia/cloudflare-ddns:1.11.0'
# set container name cloudflare-ddns memory '0'
# set container name cloudflare-ddns restart 'on-failure'
# set container name cloudflare-ddns shared-memory '0'
