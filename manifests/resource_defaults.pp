File {
  owner => '0',
  group => '0',
  mode  => '0644',
}

file { '/tmp/defaults':
  ensure => directory,
}

file { [
  '/tmp/defaults/hello',
  '/tmp/defaults/goodbye',
]:
  ensure => present,
}
