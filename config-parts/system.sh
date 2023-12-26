#!/bin/vbash

set system domain-name "${SECRET_DOMAIN_NAME}"
set system host-name 'vyos'

set system ipv6 disable-forwarding

set system login user vyos authentication public-keys personal key 'AAAAC3NzaC1lZDI1NTE5AAAAICabh/2jf2rA8nRyfK3bReY+0CTZTJnq+72Tr7P0yRHt'
set system login user vyos authentication public-keys personal type 'ssh-ed25519'

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

set system time-zone 'Europe/Warsaw'