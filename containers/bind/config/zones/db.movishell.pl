; Make sure to update the epoch time in the SOA records so coreDNS picks up the changes automatically
; https://www.epochconverter.com/

; SOA Records
$TTL 3600
$ORIGIN movishell.pl.
@ 3600 IN SOA rootnode.ishioni.casa. rootnode.ishioni.casa. (
  1690965199         ; serial number (epoch timestamp)
  7200               ; refresh period
  3600               ; retry period
  1209600            ; expire time
  3600               ; minimum ttl
)

; NS Records
@                          IN  NS rootnode.ishioni.casa.

; Upstream
mail.movishell.pl.	1	IN	A	66.111.4.147
mail.movishell.pl.	1	IN	A	66.111.4.148

; CAA Records
movishell.pl.	1	IN	CAA	0 issue "letsencrypt.org"

; CNAME Records
*.archie.movishell.pl.	60	IN	CNAME	archie.movishell.pl.

; MX Records
movishell.pl.	1	IN	MX	10 in1-smtp.messagingengine.com.
movishell.pl.	1	IN	MX	20 in2-smtp.messagingengine.com.

; SRV Records
_caldavs._tcp.movishell.pl.	1	IN	SRV	0 1 443 caldav.fastmail.com.
_caldav._tcp.movishell.pl.	1	IN	SRV	0 0 0 .
_carddavs._tcp.movishell.pl.	1	IN	SRV	0 1 443 carddav.fastmail.com.
_carddav._tcp.movishell.pl.	1	IN	SRV	0 0 0 .
_imaps._tcp.movishell.pl.	1	IN	SRV	0 1 993 imap.fastmail.com.
_imap._tcp.movishell.pl.	1	IN	SRV	0 0 0 .
_jmap._tcp.movishell.pl.	1	IN	SRV	0 1 443 jmap.fastmail.com.
_pop3s._tcp.movishell.pl.	1	IN	SRV	0 1 995 pop.fastmail.com.
_pop3._tcp.movishell.pl.	1	IN	SRV	0 0 0 .
_submission._tcp.movishell.pl.	1	IN	SRV	0 1 587 smtp.fastmail.com.