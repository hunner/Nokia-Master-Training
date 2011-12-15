## Enable bluetooth:
#class { 'bluetooth': }

## Disable bluetooth:
class { 'bluetooth':
  enable => false,
}
