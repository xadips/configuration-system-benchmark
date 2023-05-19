class java {

  package { 'openjdk-11-jdk':
    ensure => 'installed',
  }
}

include java