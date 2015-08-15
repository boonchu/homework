#!/usr/bin/env puppet apply
# 
# templating - https://docs.puppetlabs.com/guides/templating.html
# module path - https://docs.puppetlabs.com/puppet/3.5/reference/dirs_modulepath.html
# ntp module - https://forge.puppetlabs.com/puppetlabs/ntp
# reserved words - https://tickets.puppetlabs.com/browse/PUP-2824
# langauge func - https://docs.puppetlabs.com/puppet/latest/reference/lang_functions.html

include ntp # function call; modifies catalog

file { 'root/etc/ntp.conf':
  ensure  => file,
  content => template('my_ntp/ntp.conf.erb'), # function call; resolves to a string
}

$binaries = [
  'cfacter',
  'facter',
  'hiera',
  'mco',
  'puppet',
  'puppetserver',
]

# function call with lambda; runs block of code several times
each($binaries) |String $binary| {

  file { "/usr/bin/${binary}":
    ensure => link,
    target => "root/opt/puppetlabs/bin/${binary}",
  }

}
