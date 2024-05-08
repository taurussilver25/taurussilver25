#creating all important zones
add-DnsServerResourceRecord -zonename ngcp42.com -A -name ns -ipv4address 10.42.1.10
add-DnsServerResourceRecord -zonename ngcp42.com -A -name "." -ipv4address 10.42.1.10
#
add-DnsServerResourceRecord -zonename ngcp42.com -Cname -name www -hostname ns.ngcp42.com
add-DnsServerResourceRecord -zonename ngcp42.com -Cname -name pop -hostname ns.ngcp42.com
add-DnsServerResourceRecord -zonename ngcp42.com -Cname -name imap -hostname ns.ngcp42.com
add-DnsServerResourceRecord -zonename ngcp42.com -Cname -name smtp -hostname ns.ngcp42.com
#
Add-DnsServerResourceRecordMX -Preference 10  -Name "." -MailExchange "ns.ngcp42.com" -ZoneName "ngcp42.com"