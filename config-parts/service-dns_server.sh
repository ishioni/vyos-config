#!/bin/vbash

set service dns forwarding allow-from '10.1.0.0/24'
set service dns forwarding cache size '0'
set service dns forwarding listen-address '10.1.0.1'