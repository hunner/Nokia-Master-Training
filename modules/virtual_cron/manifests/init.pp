class virtual_cron {
  @cron { 'logrotate 1':
    command => '/usr/sbin/logrotate',
    user    => 'root',
    hour    => '2',
    minute  => '0',
  }
  @cron { 'logrotate 2':
    command => '/usr/sbin/logrotate',
    user    => 'root',
    hour    => '2',
    minute  => '30',
  }
  @cron { 'logrotate 3':
    command => '/usr/sbin/logrotate',
    user    => 'root',
    hour    => '3',
    minute  => '0',
  }
}
