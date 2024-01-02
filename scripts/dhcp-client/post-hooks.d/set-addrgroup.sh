#!/bin/sh
#
# /config/scripts/dhcp-client/post-hooks.d/set-addrgroup

# To enable this script set the following variable to "yes"
RUN="yes"

if [ "$RUN" = "yes" ]; then
  tmpfile=$(mktemp /tmp/dhcp-script.XXXXXXXX)
  chmod -R 755 "${tmpfile}"
  logfile=/tmp/set-addrgroup.debug
  if [[ _"$reason"_ == "_BOUND_" ]] ; then
  echo "BOUND!" >> $logfile
  echo "$tmpfile" >> $logfile
  tee  "$tmpfile" >> $logfile <<EOF
#!/usr/bin/vbash
source /opt/vyatta/etc/functions/script-template
configure
delete firewall group address-group ADDRv4_${interface}
set firewall group address-group ADDRv4_${interface} address ${new_ip_address}
commit comment "Updated address-group ADDRv4${interface} from DHCP"
save
EOF
  sg vyattacfg -c "/usr/bin/vbash -x ${tmpfile}" >> ${logfile}
  fi
fi