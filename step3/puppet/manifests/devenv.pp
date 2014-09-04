group { 'puppet': ensure => 'present' }

exec { "apt-get update":
  command => "apt-get -yq update",
  path    => ["/bin","/sbin","/usr/bin","/usr/sbin"]
}

exec { "install java":
  command => "apt-get install -yq openjdk-7-jdk",
  require => Exec["apt-get update"],
  path    => ["/bin","/sbin","/usr/bin","/usr/sbin"]
}
