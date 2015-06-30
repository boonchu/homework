###### Puppet Homework ######

* How to start with Puppet Vagrant environment 

* start with magmum

```
$ magnum module create "[MODULE NAME]"
$ cd "[MODULE NAME]"
```

* start with init.pp, see from example files

```
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
