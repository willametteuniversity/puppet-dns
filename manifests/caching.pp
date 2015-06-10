# == Define dns::caching
#
class dns::caching (
  $root_hint_file = '/var/named/named.ca',
) {
  file {'/etc/named/named.conf.caching':
    owner   => 'named',
    group   => 'named',
    mode    => '0755',
    content => template("${module_name}/caching.erb"),
  }
}

