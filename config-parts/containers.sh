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
set container name bind network services address '10.5.0.2'
set container name bind restart 'on-failure'
set container name bind shared-memory '0'
set container name bind volume config destination '/etc/bind'
set container name bind volume config source '/config/containers/bind/config'
set container name bind volume config mode 'ro'
set container name bind volume cache source '/config/bind/cache'
set container name bind volume cache destination '/var/cache/bind'
set container name bind volume cache mode 'rw'

# unifi
set container name unifi environment TZ value 'Europe/Warsaw'
set container name unifi environment BIND_PRIV value 'true'
set container name unifi environment RUNAS_UID0 value 'false'
set container name unifi environment PGID value '999'
set container name unifi environment PUID value '999'
set container name unifi image 'ghcr.io/goofball222/unifi:8.0.24'
set container name unifi memory '0'
set container name unifi network services address '10.5.0.10'
set container name unifi restart 'on-failure'
set container name unifi shared-memory '0'
set container name unifi volume cert source '/config/containers/unifi/cert'
set container name unifi volume cert destination '/usr/lib/unifi/cert'
set container name unifi volume cert mode 'rw'
set container name unifi volume data source '/config/containers/unifi/data'
set container name unifi volume data destination '/usr/lib/unifi/data'
set container name unifi volume data mode 'rw'
set container name unifi volume logs source '/config/containers/unifi/logs'
set container name unifi volume logs destination '/usr/lib/unifi/logs'
set container name unifi volume logs mode 'rw'
set container name unifi cap-add 'net-bind-service'

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

# wildcard certificate
set container name lego-auto image 'ghcr.io/bjw-s/lego-auto:v0.2.0'
set container name lego-auto memory '0'
set container name lego-auto allow-host-networks
set container name lego-auto shared-memory '0'
set container name lego-auto restart 'on-failure'
set container name lego-auto environment TZ value 'Europe/Warsaw'
set container name lego-auto environment LA_DATADIR value '/certs'
set container name lego-auto environment LA_CACHEDIR value '/certs/.cache'
set container name lego-auto environment LA_EMAIL value 'homelab@movishell.pl'
set container name lego-auto environment LA_PROVIDER value 'cloudflare'
set container name lego-auto environment LA_DOMAINS value '*.ishioni.casa'
set container name lego-auto environment CF_DNS_API_TOKEN value "${SECRET_CLOUDFLARE_DYNDNS_TOKEN}"
set container name lego-auto volume certs source '/config/certs'
set container name lego-auto volume certs destination '/certs'
set container name lego-auto volume certs mode 'rw'

# # HAProxy talos
set container name haproxy-talos image 'docker.io/library/haproxy:2.9.1'
set container name haproxy-talos memory '0'
set container name haproxy-talos network services address '10.5.0.3'
set container name haproxy-talos restart 'on-failure'
set container name haproxy-talos shared-memory '0'
set container name haproxy-talos cap-add 'net-bind-service'
set container name haproxy-talos volume config source '/config/containers/haproxy/talos/haproxy.cfg'
set container name haproxy-talos volume config destination '/usr/local/etc/haproxy/haproxy.cfg'
set container name haproxy-talos volume config mode 'ro'

# # HAProxy proxmox
set container name haproxy-proxmox image 'docker.io/library/haproxy:2.9.1'
set container name haproxy-proxmox memory '0'
set container name haproxy-proxmox network services address '10.5.0.4'
set container name haproxy-proxmox restart 'on-failure'
set container name haproxy-proxmox shared-memory '0'
set container name haproxy-proxmox cap-add 'net-bind-service'
set container name haproxy-proxmox volume config source '/config/containers/haproxy/proxmox/haproxy.cfg'
set container name haproxy-proxmox volume config destination '/usr/local/etc/haproxy/haproxy.cfg'
set container name haproxy-proxmox volume config mode 'ro'
set container name haproxy-proxmox volume certs source '/config/certs'
set container name haproxy-proxmox volume certs destination '/etc/haproxy/certs'
set container name haproxy-proxmox volume certs mode 'ro'

# onepassword-connect
set container name onepassword-connect image 'docker.io/1password/connect-api:1.7.2'
set container name onepassword-connect environment TZ value 'Europe/Warsaw'
set container name onepassword-connect environment OP_SESSION value "${SECRET_OP_CREDENTIALS}"
set container name onepassword-connect environment OP_HTTP_PORT value '8438'
set container name onepassword-connect memory '0'
set container name onepassword-connect network services address '10.5.0.5'
set container name onepassword-connect shared-memory '0'
set container name onepassword-connect volume data source '/tmp/onepassword/data'
set container name onepassword-connect volume data destination '/home/opuser/.op/data'
set container name onepassword-connect volume data mode 'rw'

# onepassword-sync
set container name onepassword-sync image 'docker.io/1password/connect-sync:1.7.2'
set container name onepassword-sync environment TZ value 'Europe/Warsaw'
set container name onepassword-sync memory '0'
set container name onepassword-sync shared-memory '0'
set container name onepassword-sync network services address '10.5.0.6'
set container name onepassword-sync environment OP_SESSION value "${SECRET_OP_CREDENTIALS}"
set container name onepassword-sync volume data source '/tmp/onepassword/data'
set container name onepassword-sync volume data destination '/home/opuser/.op/data'
set container name onepassword-sync volume data mode 'rw'