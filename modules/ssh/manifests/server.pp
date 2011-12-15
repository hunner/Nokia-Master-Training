class ssh::server {
  package { 'openssh-server':
    ensure => present,
  }

  file { '/etc/ssh/sshd_config':
    ensure   => present,
    source   => 'puppet:///modules/ssh/sshd_config',
    owner    => 'root',
    group    => 'root',
    mode     => '0600',
    require  => Package['openssh-server'],
  }

  service { 'sshd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    subscribe  => File['/etc/ssh/sshd_config'],
  }
}
