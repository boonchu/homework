jenkins-server

Description
===========

jenkins-server - Example of roles profiles for Jenkins service

Requirements
============

Debugging
---------

```
$ vagrant ssh
$ sudo -s
$ FACTER_vagrant='1' FACTER_server='jenkins-server.vagrant.local' FACTER_role='jenkins'  puppet apply --verbose --parser future --hiera_config=/tmp/vagrant-puppet/hiera.yaml --detailed-exitcodes --environmentpath /tmp/vagrant-puppet/environments/ --environment vagrant /tmp/vagrant-puppet/environments/vagrant/manifests --debug
```

License
=======

Copyright (C) 2016 Example, Inc.
Distributed under the All Rights Reserved License.
