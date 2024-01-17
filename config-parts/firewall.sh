#!/bin/vbash

# General configuration
set firewall global-options state-policy established action 'accept'
set firewall global-options state-policy related action 'accept'
set firewall global-options all-ping enable
set firewall global-options broadcast-ping disable
set firewall global-options source-validation strict

# Unifi devices
set firewall group address-group unifi_devices address '10.1.0.10-10.1.0.19' # Switches
set firewall group address-group unifi_devices address '10.1.0.20-10.1.0.29' # AP's

# Router (VyOS itself)
set firewall group address-group router-addresses address 10.1.1.1
set firewall group address-group router-addresses address 10.1.2.1
set firewall group address-group router-addresses address 10.1.3.1
set firewall group address-group router-addresses address 10.1.5.1
set firewall group address-group router-addresses address 127.0.0.1

# Port groups
set firewall group port-group wireguard port '51820'