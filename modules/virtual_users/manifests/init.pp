class virtual_users {
  @user { 'hunner':
    ensure => present,
    group  => ['ops','dev','users'],
  }
  @user { 'bar':
    ensure => present,
    group  => ['ops','dev','users'],
  }
  @user { 'elvis':
    ensure => present,
    group  => ['ops','users'],
  }
  @user { 'batesn':
    ensure => present,
    group  => ['users'],
  }
  @user { 'fred':
    ensure => present,
    group  => ['users'],
  }
  @user { 'quux':
    ensure => present,
    group  => ['dev','users'],
  }
  @user { 'foo':
    ensure => present,
    group  => ['dev','users'],
  }
}
