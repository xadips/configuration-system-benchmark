class apache {

  package { 'apache2':
    ensure => 'installed',
  }
}

include apache