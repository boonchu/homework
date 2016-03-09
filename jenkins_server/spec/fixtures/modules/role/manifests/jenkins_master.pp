class role::jenkins_master inherits role {
    notify { 'calling profile::jenkins_master': }
    include profile::jenkins_master
}
