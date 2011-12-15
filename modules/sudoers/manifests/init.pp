class sudoers {
  file { '/etc/sudoers':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0440',
    source => 'puppet:///modules/sudoers/sudoers',
  }
}
