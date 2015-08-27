# Exec['/usr/bin/apt-get update || true'] -> Package <| |>
# Exec {
#   path => '/usr/bin:/usr/sbin:/bin'
# }

include epel
include my_firewall

# https://github.com/puppetlabs/puppetlabs-apache
class { 'apache': }
apache::vhost { 'server3.cracker.org':
  port                        => '80',
  docroot                     => '/var/www/docroot',
  wsgi_application_group      => '%{GLOBAL}',
  wsgi_daemon_process         => 'wsgi',
  wsgi_daemon_process_options => {
    processes         => '2',
    threads           => '15',
    display-name      => '%{GROUP}',
  },
  wsgi_import_script          => '/var/www/cgi-bin/hello.wsgi',
  wsgi_import_script_options  => {
    process-group     => 'wsgi',
    application-group => '%{GLOBAL}',
  },
  wsgi_process_group          => 'wsgi',
  wsgi_script_aliases         => {
    '/hello'          => '/var/www/cgi-bin/hello.wsgi',
    '/info'           => '/var/www/cgi-bin/info.wsgi',
  },
}
