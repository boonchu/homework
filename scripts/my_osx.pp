#!/usr/bin/env puppet apply
# 
# osx_notify - https://forge.puppetlabs.com/jhaals/osx_notify

include osx_notify

osx_notify { 'sublime_notify':
  subject     => 'New Application',
  message     => 'Sublime2 has been installed to your machine!',
  refreshonly => true
}

package { 'Sublime2':
  ensure   => installed,
  provider => appdmg,
  source   => 'http://apps.example.com/sublime.dmg',
  notify   => Osx_notify['sublime_notify']
}
