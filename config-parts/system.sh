#!/bin/vbash

set system host-name 'vyos'
set system domain-name 'network.internal'
set system static-host-mapping host-name rootnode.network.internal inet '10.1.1.1'
set system static-host-mapping host-name rootnode.servers.internal inet '10.1.2.1'
set system static-host-mapping host-name rootnode.iot.internal inet '10.1.3.1'
set system static-host-mapping host-name rootnode.kubernetes.internal inet '10.1.4.1'
set system static-host-mapping host-name rootnode.trusted.internal inet '10.1.5.1'

set system ipv6 disable-forwarding

set system login user vyos authentication public-keys personal key 'AAAAC3NzaC1lZDI1NTE5AAAAICabh/2jf2rA8nRyfK3bReY+0CTZTJnq+72Tr7P0yRHt'
set system login user vyos authentication public-keys personal type 'ssh-ed25519'

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

set system time-zone 'Europe/Warsaw'