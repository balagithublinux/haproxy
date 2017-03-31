class haproxy::install { 

      package { 'haproxy':
           ensure => 'installed',
         }
}


