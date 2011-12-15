define services::service (
  $port,
  $protos = ['tcp','udp'],
  $aliases = undef,
  $comment = undef,
  $ensure
) {
  file {"${services::basedir}/services.d/${port}-${name}":
    ensure  => $ensure,
    content => template('services/service.erb'),
    notify  => Exec['rebuild-services'],
  }
}
