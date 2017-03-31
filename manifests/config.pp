class haproxy::config {

file { '/etc/haproxy/haproxy.cfg':
     ensure => 'present',
     source => 'puppet:///modules/haproxy/haproxy.cfg',
}

file { '/etc/pki/tls/certs/mydomain.pem':
     ensure => 'present',
      source => 'puppet:///modules/haproxy/mydomain.pem',
      owner => 'root',
      group => 'root',
      mode => '644',
}
}
