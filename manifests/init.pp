class systemupdate {
  # @license CC-BY-SA 3.0
  # @link http://askubuntu.com/q/3167/
  # Autoclean not longer available packages
  exec { 'apt-autoclean':
    command => '/usr/bin/apt-get autoclean'
  }
  # Update package catalogue
  exec { 'apt-get-update':
    command => '/usr/bin/apt-get update',
    require => Exec['apt-autoclean'],
  }
  # Fix broken packages
  exec { 'apt-fix-broken':
    command => '/usr/bin/apt-get -f install',
    require => Exec['apt-autoclean'],
  }

  if ! defined( Package['curl'] ) {
    package { 'curl':
      ensure  => 'present',
      require => Exec['apt-autoclean'],
    }
  }
  if ! defined( Package['make'] ) {
    package { 'make':
      ensure  => 'present',
      require => Exec['apt-autoclean'],
    }
  }
  if ! defined( Package['chkconfig'] ) {
    package { 'chkconfig':
      ensure  => 'present',
      require => Exec['apt-autoclean'],
    }
  }

  case $operatingsystem {
    centos: {
      if ! defined( Package['yum'] ) {
        package { 'yum':
          ensure  => 'present',
          require => Exec['apt-autoclean'],
        }
      }
    }
  }
}