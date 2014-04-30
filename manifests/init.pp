class systemupdate {
  # Update catalogue
  exec { 'apt-get-update':
    command => '/usr/bin/apt-get update'
  }

  if ! defined( Package['curl'] ) {
    package { 'curl':
      ensure  => 'present',
      require => Exec['apt-get-update'],
    }
  }
  if ! defined( Package['yum'] ) {
    package { 'yum':
      ensure  => 'present',
      require => Exec['apt-get-update'],
    }
  }
  if ! defined( Package['rpm'] ) {
    package { 'rpm':
      ensure  => 'present',
      require => Exec['apt-get-update'],
    }
  }
  if ! defined( Package['make'] ) {
    package { 'make':
      ensure  => 'present',
      require => Exec['apt-get-update'],
    }
  }
  if ! defined( Package['chkconfig'] ) {
    package { 'chkconfig':
      ensure  => 'present',
      require => Exec['apt-get-update'],
    }
  }
}