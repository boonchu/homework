node default {

    exec { 'prepare_meal':
        command     => '/bin/echo "prepare_my_meal"',
        refreshonly => true,
    }

    exec { 'cooking_thai':
        command => '/bin/echo cooking_thai',
        onlyif  => '/usr/bin/grep thai_foods /tmp/cookings',
        notify  => Exec['prepare_meal'],
    }

    exec { 'cooking_italian':
        command => '/bin/echo cooking_italian',
        onlyif  => '/usr/bin/grep italian_foods /tmp/cookings',
        notify  => Exec['prepare_meal'],
    }

}
