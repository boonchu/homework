#!/usr/bin/env puppet apply --parser future
# --parser future (if running 3.7.x)
#
#  https://docs.puppetlabs.com/puppet/latest/reference/lang_iteration.html

define console_log (
  $message = undef,
) {
  notify{ "console with value ${title}": }
}

$filtered_array = [ 1, 20, 3].filter |Integer $value| { $value < 10 }
console_log { "array is ${filtered_array}": }

$sum = reduce([1,2,3]) |$result, $value|  { $result + $value }
console_log { "sum is ${sum}": }

$hash_as_array = [
  'key1', 'first value',
  'key2', 'second value',
  'key3', 'third value',
]

$real_hash = $hash_as_array.slice(2).reduce( {} ) |Hash $memo, Array $pair| {
  $memo + $pair
}
console_log { "hash as array is ${real_hash}": }
