group { 'puppet': ensure => 'present' }

exec { "apt-get update":
  command => "apt-get -yq update",
  path    => ["/bin","/sbin","/usr/bin","/usr/sbin"]
}

package { "openjdk-7-jdk":
  ensure  => installed,
  require => Exec["apt-get update"],
}
