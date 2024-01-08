#!/bin/vbash

# General configuration
set firewall global-options state-policy established action 'accept'
set firewall global-options state-policy related action 'accept'
set firewall global-options all-ping enable
set firewall global-options broadcast-ping disable
set firewall global-options source-validation strict

# Empty WAN address group for NAT - this will be filled on boot by the dhcp hook
set firewall group address-group ADDRv4_eth0
set firewall group address-group ADDRv4_pppoe0

# Unifi devices
set firewall group address-group unifi_devices address '10.1.0.10-10.1.0.19' # Switches
set firewall group address-group unifi_devices address '10.1.0.20-10.1.0.29' # AP's

# NAS groups
set firewall group address-group nas address '10.1.2.2'
set firewall group address-group nas address '10.1.3.2'
set firewall group address-group nas address '10.1.4.2'
set firewall group address-group nas address '10.1.5.2'

# Proxmox group
set firewall group address-group proxmox_nodes address '10.1.2.3-10.1.2.6'

# K8S group
set firewall group address-group k8s_nodes address '10.1.4.10'
set firewall group address-group k8s_nodes address '10.1.4.11'
set firewall group address-group k8s_nodes address '10.1.4.12'
set firewall group address-group k8s_nodes address '10.1.4.20'
set firewall group address-group k8s_nodes address '10.1.4.21'
set firewall group address-group k8s_nodes address '10.1.4.22'

# Router (VyOS itself)
set firewall group address-group router-addresses address 10.1.1.1
set firewall group address-group router-addresses address 10.1.2.1
set firewall group address-group router-addresses address 10.1.3.1
set firewall group address-group router-addresses address 10.1.4.1
set firewall group address-group router-addresses address 10.1.5.1
set firewall group address-group router-addresses address 127.0.0.1

# Vyos containers addresses
set firewall group address-group vyos_unifi address '10.5.0.2'

# Port groups
set firewall group port-group wireguard port '51820'