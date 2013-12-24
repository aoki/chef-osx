#
# Cookbook Name:: vagrant
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dmg_package "Vagrant" do
  dmg_name  "Vagrant-1.3.5"
  type      "pkg"
  source    "http://files.vagrantup.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/Vagrant-1.3.5.dmg"
  checksum  "a9486c60f0dd18c52e2c202b4a91a4024469cec6726abdf70438bcc1e79afbb4"
  package_id "com.vagrant.vagrant"
end
