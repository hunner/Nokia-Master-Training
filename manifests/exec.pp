exec { '/bin/touch /tmp/foo':
  creates => '/tmp/foo',
}
