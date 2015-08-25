# == Class: my_firewall
#
# Full description of class my_firewall here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { my_firewall:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name puppet@example.com
#
# === Copyright
#
# Copyright (C) 2015 Example, Inc.
#
class my_firewall {

  # set up a metatype to purge unmanaged firewall resources
  # clear any existing rules and make sure that only rules defined in Puppet 
  # exist on the machine
  resources { 'firewall':
    purge => true,
  }

  # Include the firewall class to ensure the correct packages are installed.
  class { 'firewall': }

  # ensure that the pre and post classes are run in the correct order 
  Firewall {
    before  => Class['my_firewall::post'],
    require => Class['my_firewall::pre'],
  }

  #  declare the my_fw::pre and my_fw::post classes to satisfy dependencies
  class { ['my_firewall::pre', 'my_firewall::post']: }

}
