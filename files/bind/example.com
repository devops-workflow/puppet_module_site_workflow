$ORIGIN .com.
$TTL 3600       ; 1 hour
example			IN SOA	ns-master.example.com. hostmaster.example.com. (
				2015102800 ; serial
				1800       ; refresh (30 minutes)
				900        ; retry (15 minutes)
				604800     ; expire (1 week)
				3600       ; minimum (1 hour)
				)
			NS	ns-master.example.com.
			A	10.1.1.7
			MX 10	smtp.example.com.

$ORIGIN example.com.
localhost		A	127.0.0.1

cobbler			A	10.1.1.8
foreman			A	10.1.1.6
jenkins-master		A	10.1.1.5
ns-master		A	10.1.1.7
puppet-master		A	10.1.1.4
