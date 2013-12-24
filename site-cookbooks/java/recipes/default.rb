#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dmg_package "JavaForOSX" do
  dmg_name  "JavaForOSX2013-05"
  volumes_dir "Java for OS X 2013-005"
  type      "pkg"
  source    "http://support.apple.com/downloads/DL1572/ja_JP/JavaForOSX2013-05.dmg"
  checksum  "81e1155e44b2c606db78487ca1a02e31dbb3cfbf7e0581a4de3ded9e635a704e"
  action    :install
end
