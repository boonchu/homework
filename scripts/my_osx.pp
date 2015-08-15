#!/usr/bin/env puppet apply
# 
# osx_notify - https://forge.puppetlabs.com/jhaals/osx_notify
# installed module:
#   puppet module install jhaals-osx_notify

osx_notify { 'sublime_notify':
  subject     => 'New Application',
  message     => 'Sublime2 has been installed to your machine!',
  refreshonly => true
}

package { 'Sublime2':
  ensure   => installed,
  provider => appdmg,
  source   => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg',
  notify   => Osx_notify['sublime_notify']
}
