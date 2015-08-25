###### Puppet Homework ######

* How to start with Puppet Vagrant environment 

* install latest vagrant

* download vagrant box image

```
$ vagrant box add centos7-puppet3.8.1 https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box
```

* prepare environment for vagrant

```
$ curl -sSL https://get.rvm.io | bash -s stable --ruby
$ rvm reload
$ echo rvm_auto_reload_flag=1 >> ~/.rvmrc

* update shell rc like .bashrc or .zshrc
PATH="$GEM_HOME/bin:$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[ -s ${HOME}/.rvm/scripts/rvm ] && source ${HOME}/.rvm/scripts/rvm

```

* rvm operation guide

```
$ rvm reload
$ rvm remove ruby-2.1.1
$ rvm uninstall all
$ rvm alias list
$ rvm alias delete default
```

* downgrade to 2.1.1 per magnum support

```
$ rvm install 2.1.1
$ rvm use 2.1.1
$ rvm list
rvm rubies
=> ruby-2.1.1 [ x86_64 ]
 * ruby-2.2.1 [ x86_64 ]
# => - current
# =* - current && default
#  * - default
$ rvm alias list                                                                                                                                        1 ↵
default => ruby-2.2.1
$ rvm alias delete ruby-2.2.1
Deleting alias: ruby-2.2.1...
$ rvm alias create default ruby-2.1.1                                                                                                                   2 ↵
Creating alias default for ruby-2.1.1....
$ rvm alias list
default => ruby-2.1.1

```

* gem ?

```
$ gem update CFPropertyList (taking latest?)
$ gem install CFPropertyList -v 2.2.6 (try specific version of module?)
```

* install magnum

```
$ git clone https://github.com/tehmaspc/magnum.git
$ gem install bundler
$ bundle install && bundle exec rake install
```

* start with magmum

```
$ magnum module create "[MODULE NAME]"
$ cd "[MODULE NAME]"
```

* start developing puppet with init.pp, see from example files

```
$ bundle install && bundle update
$ bundle exec rake spec_clean 
$ bundle exec rake lint
$ bundle exec rake spec (rake spec_standalone)
$ vagrant up
$ vagrant provision (if needed)
```

* language style guide
   - http://docs.puppetlabs.com/guides/style_guide.html

* reinstall gem bundler
   - http://stackoverflow.com/questions/12188833/how-to-reinstall-a-gem-using-bundler

* puppet practices
   - https://wikitech.wikimedia.org/wiki/Puppet_coding
   - http://blog.mayflower.de/4573-The-Puppet-Anchor-Pattern-in-Practice.html
   - http://elatov.github.io/2014/09/writing-better-puppet-modules/

* puppet variable scope
   - https://docs.puppetlabs.com/guides/scope_and_puppet.html

* puppet type reference
   - https://docs.puppetlabs.com/references/latest/type.html

* server spec test
   - http://serverspec.org/
