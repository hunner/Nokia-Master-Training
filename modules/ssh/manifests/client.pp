class ssh::client {
  package { 'openssh-client':
    ensure => present,
  }

  file { '/etc/ssh/ssh_config':
    ensure   => present,
    source   => 'puppet:///modules/ssh/ssh_config',
    owner    => 'root',
    group    => 'root',
    mode     => '0600',
    require  => Package['openssh-client'],
  }
}
