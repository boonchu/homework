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
) inherits files::params {

    file { "/tmp/${myname}":
        ensure  => file,
        content => template('files/probeme.erb')
    }

}
