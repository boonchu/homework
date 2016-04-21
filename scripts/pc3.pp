# http://www.slideshare.net/PuppetLabs/doingitwrong-print
user { ['dan', 'alex']:
    ensure => 'absent',
}
ensure_resource('user', ['dan','alex'], {'ensure' => 'absent'})

exec {"hello_boonchu":
  command => "/bin/echo hello",
  user => bigchoo,
}

exec {"hello_boonchu2":
  command => "/bin/echo hello",
  user => bigchoo,
} 

# https://tickets.puppetlabs.com/browse/PUP-1073
#package {'vim': }
#
#package {'gem-vim': 
#    name => 'vim',
#    provider => gem,
#}

# http://stackoverflow.com/questions/27711205/order-of-resources-in-a-class-using-ensure-packages
# https://docs.puppet.com/puppet/latest/reference/lang_relationships.html

class test {
    ensure_resource ( 'file', '/tmp/foo', { 'ensure' => 'present', 'content' => "bar\n"} )
}

include test
