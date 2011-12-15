resources { 'host':
  purge => true,
}
host { 'king.puppetlabs.lan':
  ensure       => 'present',
  host_aliases => ['king'],
  ip           => '192.168.159.154',
  target       => '/etc/hosts',
}
host { 'localhost.localdomain':
  ensure       => 'present',
  host_aliases => ['localhost'],
  ip           => '127.0.0.1',
  target       => '/etc/hosts',
}
host { 'localhost6.localdomain6':
  ensure       => 'present',
  host_aliases => ['localhost6'],
  ip           => '::1',
  target       => '/etc/hosts',
}
