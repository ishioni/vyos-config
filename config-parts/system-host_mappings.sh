#!/bin/vbash

# Gateway
set system static-host-mapping host-name rootnode.network.internal inet '10.1.1.1'
set system static-host-mapping host-name rootnode.servers.internal inet '10.1.2.1'
set system static-host-mapping host-name rootnode.iot.internal inet '10.1.3.1'
set system static-host-mapping host-name rootnode.kubernetes.internal inet '10.1.4.1'
set system static-host-mapping host-name rootnode.trusted.internal inet '10.1.5.1'

# NAS
set system static-host-mapping host-name quadrant.iot.internal inet '10.1.3.2'
set system static-host-mapping host-name quadrant.kubernetes.internal inet '10.1.4.2'
set system static-host-mapping host-name quadrant.trusted.internal inet '10.1.5.2'

# KUBERNETES
# set system static-host-mapping host-name talos.kubernetes.internal inet '10.1.4.19'