# Exec['/usr/bin/apt-get update || true'] -> Package <| |>
# Exec {
#   path => '/usr/bin:/usr/sbin:/bin'
# }

include epel
include my_firewall

class { 'apache': }

apache::vhost { 'www.cracker.org':
  port                        => '80',
  docroot                     => '/srv/www/pythonapp',
  wsgi_application_group      => '%{GLOBAL}',
  wsgi_daemon_process         => 'wsgi',
  wsgi_daemon_process_options => {
    processes    => '2',
    threads      => '15',
    display-name => '%{GROUP}',
  },
  wsgi_import_script          => '/srv/www/demo.wsgi',
  wsgi_import_script_options  => {
    process-group     => 'wsgi',
    application-group => '%{GLOBAL}',
  },
  wsgi_process_group          => 'wsgi',
  wsgi_script_aliases         => { '/' => '/var/www/demo.wsgi' },
}
