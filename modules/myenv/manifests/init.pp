class myenv {
  myenv::user { 'elvis':
    ssh_key => 'authorized_keys.user',
  }
  myenv::user { 'newb':
    ssh_key => 'authorized_keys.user',
  }
  myenv::user { 'hunner':
    ssh_key => 'authorized_keys.ops',
  }
  myenv::user { 'batesn': }
  myenv::user { 'root': }
}
