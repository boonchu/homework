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
$ bundle exec rake spec
$ vagrant up
$ vagrant provision (if needed)
```

* puppet practices
   - http://blog.mayflower.de/4573-The-Puppet-Anchor-Pattern-in-Practice.html
   - http://elatov.github.io/2014/09/writing-better-puppet-modules/
