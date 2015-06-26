###### Puppet Homework ######

* How to start with Puppet Vagrant environment 

* start with magmum

```
$ magnum module create "[MODULE NAME]"

$ cd "[MODULE NAME]"

$ tree templates/ manifests/
templates/
└── probeme.erb
manifests/
├── init.pp
└── params.pp
```

* start with init.pp, see from example files

```
$ vagrant up
```
