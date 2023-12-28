#!/bin/vbash

# NETWORK
set service dns forwarding allow-from '10.1.1.0/24'
set service dns forwarding listen-address '10.1.1.1'

# SERVERS
set service dns forwarding allow-from '10.1.2.0/24'
set service dns forwarding listen-address '10.1.2.1'

# IOT
set service dns forwarding allow-from '10.1.3.0/24'
set service dns forwarding listen-address '10.1.3.1'

# KUBERNETES
set service dns forwarding allow-from '10.1.4.0/24'
set service dns forwarding listen-address '10.1.4.1'

# TRUSTED
set service dns forwarding allow-from '10.1.5.0/24'
set service dns forwarding listen-address '10.1.5.1'