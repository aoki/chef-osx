#
# Cookbook Name:: virtual_box
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dmg_package "VirtualBox" do
  dmg_name  "VirtualBox-4.3.4-91027-OSX"
  type      "pkg"
  source    "http://download.virtualbox.org/virtualbox/4.3.4/VirtualBox-4.3.4-91027-OSX.dmg"
  checksum  "b14e427b1a5e11b91900849b22fbf49dd2a178c93520b03424e2d89d2daaf321"
  package_id  "org.virtualbox.pkg.virtualbox"
end
