File {
  ensure => present,
}
case $operatingsystem {
  'debian': {
    file { '/tmp/os': content => "The most stable of all\n",}
  }
  'ubuntu': {
    file { '/tmp/os': content => "For your grandma's datacenter\n",}
  }
  'gentoo': {
    file { '/tmp/os': content => "Ricer.\n",}
  }
  'rhel'  : {
    file { '/tmp/os': content => "Pay us money for our icons\n",}
  }
  'centos': {
    file { '/tmp/os': content => "It broke? Too bad...\n",}
  }
  default : {
    fail("You fail! Add ${operatingsystem}")
  }
}
