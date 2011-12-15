# http		80/tcp		www www-http	# WorldWideWeb HTTP
# http		80/udp		www www-http	# HyperText Transfer Protocol
# kerberos	88/tcp		kerberos5 krb5	# Kerberos v5
# kerberos	88/udp		kerberos5 krb5	# Kerberos v5
# supdup		95/tcp
# supdup		95/udp
# iso-tsap	102/tcp		tsap		# part of ISODE.
include services
services::service { 'http':
  ensure  => present,
  port    => '80',
  aliases => ['www','www-http'],
  comment => 'WorldWideWeb HTTP',
}
services::service { 'kerberos':
  ensure  => present,
  port    => '88',
  aliases => ['kerberos5','krb5'],
  comment => 'Kerberos v5',
}
services::service { 'supdup':
  ensure => present,
  port   => '95',
}
services::service { 'iso-tsap':
  ensure  => present,
  port    => '102',
  protos  => 'tcp',
  aliases => 'tsap',
  comment => 'part of ISODE',
}
