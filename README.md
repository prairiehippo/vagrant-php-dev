Vagrant Development Environment for PHP
==========================================

How to Install:

- Installation Instructions:
- Download and install Vagrant
- Download and install VirtualBox
- Install nfsd if using Linux (NFS comes preinstalled with OS X)
- Clone this repository into a directory on your local machine
- Change directory into the new folder created by the clone command (e.g. cd drupal-dev)
- Make a directory called "sites" (mkdir sites)
- Copy the manifests/example.pp to manifests/devsites.pp and modify that file as required to set up your host name/database setup.
- Edit your /etc/hosts file and add an entry mapping the IP 33.33.33.10 to the host name of your choice (e.g. drupal.dev)
- Run the "vagrant up" command (you will be asked for your user password to enable NFS for file access)
- Run the "vagrant provision" command

You should now have a fully functioning dev environment capable of running any LAMP based application. Apache will be configured to serve your defined site domain from the "sites" directory you created.

Installed Services:
- Ubuntu Precise Pangolin (12.04)
- PHP 5.4
- MySQL
- Apache2
- Mailcatcher
- Composer
- git
- xdebug
- ruby
