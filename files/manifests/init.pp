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

    $probeme      = 'files/probeme.erb',

    $say_hello_to = $files::params::say_hello_to,
    $myname       = $files::params::myname,

    # parser future
    $instances    = $files::params::instances,
    $owner        = $files::params::owner,
    $group        = $files::params::group,

    # template
    $redis_conf   = 'files/redis.conf.erb',
    $options_hash = { },

) inherits files::params {

    file { "/tmp/${myname}":
        ensure  => 'file',
        content => template($::files::probeme),
    }

    # http://www.example42.com/2014/10/29/reusability-features-every-module-should-have/
    # example redis templat
    file { '/etc/redis.conf':
        ensure  => 'file',
        content => template($::files::redis_conf),
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
        owner  => $::files::owner,
        group  => $::files::group,
        mode   => '0555',
      }

    }

}
