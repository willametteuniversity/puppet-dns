# == Define dns::controls
#
class dns::controls (
  $controls = undef,
) {
  file {'/etc/named/named.conf.controls':
    owner   => 'named',
    group   => 'named',
    mode    => '0755',
    content => template("${module_name}/controls.erb"),
  }
}

