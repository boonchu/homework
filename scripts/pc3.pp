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
package {'vim': }

package {'gem-vim': 
    name => 'vim',
    provider => gem,
}
