class motd {
  file { ['/etc/motd', '/etc/issue']:
    ensure  => present,
    content => template('motd/motd.erb'),
  }
}
