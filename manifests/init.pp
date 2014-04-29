class system-update {
  # Update catalogue
  exec { 'apt-get-update':
    command => '/usr/bin/apt-get update'
  }

  # Install yum, rpm, make, cURL
  exec { 'install-yum':
    command  => '/usr/bin/apt-get install --yes yum',
    provider => shell,
    onlyif   => 'command -v yum | grep -cim1 "yum"',
    require  => Exec['apt-get-update']
  }
  exec { 'install-rpm':
    command => '/usr/bin/apt-get install rpm',
    provider => shell,
    onlyif   => 'command -v rpm | grep -cim1 "rpm"',
    require  => Exec['install-yum']
  }
  exec { 'install-make':
    command => '/usr/bin/apt-get install --yes make',
    provider => shell,
    onlyif   => 'command -v make | grep -cim1 "make"',
    require  => Exec['install-yum']
  }
  exec { 'install-cURL':
    command => '/usr/bin/apt-get install --yes curl',
    provider => shell,
    onlyif   => 'command -v curl | grep -cim1 "curl"',
    require  => Exec['install-yum']
  }
}