#!/bin/bash

STAGE='/tmp/magnum-vagrant-stage'

FIXTURES_DIR='/vagrant/spec/fixtures/modules'
VAGRANT_PUPPET_ENV_DIR='/tmp/vagrant-puppet/environments/vagrant'

if [ ! -e $STAGE ]; then

  echo "Initial provision, running the magnum-vagrant shell provisioner script..."

  mkdir -p $VAGRANT_PUPPET_ENV_DIR
  ln -sfn $FIXTURES_DIR $VAGRANT_PUPPET_ENV_DIR/modules

  touch $STAGE

else
  echo "Not initial provision, skipping the magnum-vagrant shell provisioner script..."
fi

exit 0
