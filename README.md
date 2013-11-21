Vagrant Development VM Deployment for drupal.org
===============

General notes
-------------
For the local install, we are using a box (image) from Puppet Labs (http://puppet-vagrant-boxes.puppetlabs.com/).

Puppet modules are pulled in using r10k on the VM.

Local install using VirtualBox
------------------------------
* Install VirtualBox
* Install Vagrant
* Checkout this repo
* Run: `vagrant up --provider virtualbox`

Local install using VMWare Fusion (untested)
---------------------------------
* Install VMWare Fusion
* Install Vagrant licensed for VMWare Fusion
* Checkout this repo
* Run: `vagrant up --provider vmware_fusion`
