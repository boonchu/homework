# == Class: files
#
# files - contains files
#
# === Parameters
#
# [*say_hello_to*]
#
# [*myname*]
#
# === Authors
#
# Author Name bigchoo@gmail.com
#
class files (

    $say_hello_to = $files::params::say_hello_to,
    $myname       = $files::params::myname,

    $instances    = $files::params::instances,
    $owner        = $files::params::owner,
    $group        = $files::params::group,

) inherits files::params {

    file { "/tmp/${myname}":
        ensure  => file,
        content => template('files/probeme.erb')
    }

    $n = range('1', $::files::instances)
    if $n {
      validate_array($n)
    }

    notify {"[DEBUG] setup multiple files :: ${n}": withpath => true}

    each($n) |$instance| {

      $counter = 30 + $instance

      file { "/var/log/files-16${counter}":
        ensure => 'directory',
        owner  => $owner,
        group  => $group,
        mode   => '0555',
      }

    }

}
