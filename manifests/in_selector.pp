file { '/tmp/os':
  ensure  => present,
  content => $operatingsystem ? {
    'debian' => "The most stable of all\n",
    'ubuntu' => "For your grandma's datacenter\n",
    'gentoo' => "Ricer.\n",
    'rhel'   => "Pay us money for our icons\n",
    'centos' => "It broke? Too bad...\n",
    default  => "Unknowns operatingsystem: ${operatingsystem}\n",
  },
}

package { 'ssh':
  ensure => present,
  name   => $operatingsystem ? {
    'ubuntu' => 'ssh',
    'centos' => 'openssh',
  },
}

service { 'ssh':
  ensure  => running,
  name    => $operatingsystem ? {
    'ubuntu' => 'ssh',
    'centos' => 'sshd',
  },
  require => Package['ssh'],
}
