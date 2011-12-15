class sudo {
  File {
    owner => 'root',
    group => 'root',
    mode  => '0440',
  }
  File['/etc/sudoers.puppet']
  -> Exec['check sudoers']
  -> File['/etc/sudoers']

  file { '/etc/sudoers.puppet':
    source => 'puppet:///modules/sudo/sudoers',
  }
  exec { 'check sudoers':
    command => 'visudo -c -f /etc/sudoers.puppet',
    unless  => 'diff /etc/sudoers.puppet /etc/sudoers',
    path    => ['/usr/bin','/usr/sbin'],
  }
  file { '/etc/sudoers':
    source  => 'puppet:///modules/sudo/sudoers',
  }
}
