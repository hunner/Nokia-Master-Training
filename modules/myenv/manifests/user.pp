define myenv::user ($ssh_key = undef) {
  $username = $name
  $source = 'puppet:///modules/myenv'
  File {
    owner => $username,
    group => $username,
    mode  => '0644',
  }
  $homedir = $username ? {
    'root'  => '/root',
    default => "/home/${username}",
  }
  file { $homedir:
    ensure => directory,
  }
  file { "${homedir}/.vim":
    ensure  => directory,
    source  => "${source}/vim",
    recurse => true,
  }
  file { "${homedir}/.vimrc":
    ensure => file,
    source => "${source}/vimrc",
  }
  case $username {
    'root': {
      file { "${homedir}/.ssh/authorized_keys":
        ensure => absent,
      }
    }
    default: {
      if $ssh_key {
        file { "${homedir}/.ssh":
          ensure => directory,
          mode   => '0700',
        }
        file { "${homedir}/.ssh/authorized_keys":
          ensure  => file,
          source  => "${source}/${ssh_key}",
          replace => false,
        }
      }
    }
  }
}
