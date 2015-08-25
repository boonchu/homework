# Exec['/usr/bin/apt-get update || true'] -> Package <| |>
# Exec {
#   path => '/usr/bin:/usr/sbin:/bin'
# }
#

include epel

class { 'java':
  distribution => 'jdk',
  version      => 'latest',
}

include java_me
