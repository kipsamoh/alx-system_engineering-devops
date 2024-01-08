# _Automate the task of creating a _custom HTTP header _response with Puppet.
# The _name of the custom HTTP _header must be X-Served-By.
# The value of the _custom HTTP header must be the _hostname of the server Nginx.

exec {'update':
  command => '/usr/bin/apt-get update',
}
-> package {'nginx':
  ensure => 'present',
}
-> file_line { 'http_header':
  path  => '/etc/nginx/nginx.conf',
  line  => "http {\n\tadd_header X-Served-By \"${hostname}\";",
  match => 'http {',
}
-> exec {'start':
  command => '/usr/sbin/service nginx start',
}
