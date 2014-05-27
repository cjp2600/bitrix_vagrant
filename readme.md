# Bitrix / Vagrant

* 8888 - Apache
* 8889 - MySQL 
* 5433 - PostgreSQL


### Default MySQL/PostgreSQL Database

* User: root
* Password: (blank)
* DB Name: database


### PHPmyAdmin

Accessible at http://localhost:8888/phpmyadmin using MySQL access credentials above.

### PHP XDebug

XDebug is included in the build but **disabled by default** because of the effect it can have on performance.  

To enable XDebug:

1. Set the variable `$use_xdebug = "1"` at the beginning of `puppet/manifests/phpbase.pp`
2. Then you will need to provision the box either with `vagrant up` or by running the command `vagrant provision` if the box is already up
3. Now you can connect to XDebug on **port 9001**

**XDebug Tools**

* [MacGDBP](http://www.bluestatic.org/software/macgdbp/) - Free, Mac OSX
* [Codebug](http://www.codebugapp.com/) - Paid, Mac OSX


_Note: All XDebug settings can be configured in the php.ini template at `puppet/modules/php/templates/php.ini.erb`_


### Vagrant

Vagrant is [very well documented](http://vagrantup.com/v1/docs/index.html) but here are a few common commands:

* `vagrant up` starts the virtual machine and provisions it
* `vagrant suspend` will essentially put the machine to 'sleep' with `vagrant resume` waking it back up
* `vagrant halt` attempts a graceful shutdown of the machine and will need to be brought back with `vagrant up`
* `vagrant ssh` gives you shell access to the virtual machine

----
##### Virtual Machine Specifications #####

* OS     - Ubuntu 12.04
* Apache - 2.4.6
* PHP    - 5.5.4
* MySQL  - 5.5.32
* PostgreSQL - 9.1
* Beanstalkd - 1.4.6
* Redis - 2.2.12
* Memcached - 1.4.13
