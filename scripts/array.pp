#!/usr/bin/env puppet apply --parser future
#
#  https://docs.puppetlabs.com/puppet/latest/reference/lang_iteration.html

define console_log (
  $message = undef,
) {
  notify{ "console with value ${title}": }
}

$array = [1, 2, 3]
notify { "\$array has been set to ${array}": }

$array.each |Integer $k| {
  console_log { "hello ${k}": }
}
