#!/bin/vbash

set firewall zone local local-zone
set firewall zone local description 'Local router zone'
set firewall zone local default-action 'drop'
set firewall zone local from containers firewall name 'containers-local'
set firewall zone local from network firewall name 'network-local'
set firewall zone local from servers firewall name 'servers-local'
set firewall zone local from iot firewall name 'iot-local'
# set firewall zone local from kubernetes firewall name 'kubernetes-local'
set firewall zone local from trusted firewall name 'trusted-local'
set firewall zone local from wan firewall name 'wan-local'

set firewall zone containers interface 'pod-containers'
set firewall zone containers description 'Containers'
set firewall zone containers default-action 'drop'
set firewall zone containers from local firewall name 'local-containers'
set firewall zone containers from network firewall name 'network-containers'
set firewall zone containers from servers firewall name 'servers-containers'
set firewall zone containers from iot firewall name 'iot-containers'
# set firewall zone containers from kubernetes firewall name 'kubernetes-containers'
set firewall zone containers from trusted firewall name 'trusted-containers'
set firewall zone containers from wan firewall name 'wan-containers'

set firewall zone network interface 'br0'
set firewall zone network description 'NETWORK zone'
set firewall zone network default-action 'drop'
set firewall zone network from local firewall name 'local-network'
set firewall zone network from containers firewall name 'containers-network'
set firewall zone network from servers firewall name 'servers-network'
set firewall zone network from iot firewall name 'iot-network'
# set firewall zone network from kubernetes firewall name 'kubernetes-network'
set firewall zone network from trusted firewall name 'trusted-network'
set firewall zone network from wan firewall name 'wan-network'

set firewall zone servers interface 'br0.2'
set firewall zone servers description 'SERVERS zone'
set firewall zone servers default-action 'drop'
set firewall zone servers from local firewall name 'local-servers'
set firewall zone servers from containers firewall name 'containers-servers'
set firewall zone servers from network firewall name 'network-servers'
set firewall zone servers from iot firewall name 'iot-servers'
# set firewall zone servers from kubernetes firewall name 'kubernetes-servers'
set firewall zone servers from trusted firewall name 'trusted-servers'
set firewall zone servers from wan firewall name 'wan-servers'

set firewall zone iot interface 'br0.3'
set firewall zone iot description 'IOT zone'
set firewall zone iot default-action 'drop'
set firewall zone iot from local firewall name 'local-iot'
set firewall zone iot from containers firewall name 'containers-iot'
set firewall zone iot from network firewall name 'network-iot'
set firewall zone iot from servers firewall name 'servers-iot'
# set firewall zone iot from kubernetes firewall name 'kubernetes-iot'
set firewall zone iot from trusted firewall name 'trusted-iot'
set firewall zone iot from wan firewall name 'wan-iot'

# set firewall zone kubernetes interface 'br0.4'
# set firewall zone kubernetes description 'KUBERNETES zone'
# set firewall zone kubernetes default-action 'drop'
# set firewall zone kubernetes from local firewall name 'local-kubernetes'
# set firewall zone kubernetes from containers firewall name 'containers-kubernetes'
# set firewall zone kubernetes from network firewall name 'network-kubernetes'
# set firewall zone kubernetes from servers firewall name 'servers-kubernetes'
# set firewall zone kubernetes from iot firewall name 'iot-kubernetes'
# set firewall zone kubernetes from trusted firewall name 'trusted-kubernetes'
# set firewall zone kubernetes from wan firewall name 'wan-kubernetes'

set firewall zone trusted interface 'br0.5'
set firewall zone trusted description 'TRUSTED zone'
set firewall zone trusted default-action 'drop'
set firewall zone trusted from local firewall name 'local-trusted'
set firewall zone trusted from containers firewall name 'containers-trusted'
set firewall zone trusted from network firewall name 'network-trusted'
set firewall zone trusted from servers firewall name 'servers-trusted'
set firewall zone trusted from iot firewall name 'iot-trusted'
# set firewall zone trusted from kubernetes firewall name 'kubernetes-trusted'
set firewall zone trusted from wan firewall name 'wan-trusted'

set firewall zone wan interface 'eth0'
set firewall zone wan description 'WAN zone'
set firewall zone wan default-action 'drop'
set firewall zone wan from local firewall name 'local-wan'
set firewall zone wan from containers firewall name 'containers-wan'
set firewall zone wan from network firewall name 'network-wan'
set firewall zone wan from servers firewall name 'servers-wan'
set firewall zone wan from iot firewall name 'iot-wan'
# set firewall zone wan from kubernetes firewall name 'kubernetes-wan'
set firewall zone wan from trusted firewall name 'trusted-wan'