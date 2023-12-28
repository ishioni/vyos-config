#!/bin/vbash

set service dns forwarding allow-from '10.1.1.0/24'
set service dns forwarding listen-address '10.1.1.1'

set service dns forwarding allow-from '192.168.2.0/24'
set service dns forwarding listen-address '192.168.2.1'