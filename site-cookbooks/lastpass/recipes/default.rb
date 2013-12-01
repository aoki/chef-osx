#
# Cookbook Name:: lastpass
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dmg_package "lpmacosx" do
  volumes_dir "LastPass for Mac OS X"
  dmg_name "lpmacosx"
  type  "pkg"
  source "https://lastpass.com/download/cdn/lpmacosx.dmg"
  package_id "com.lastpass.lpmacosx"
  action :install
end
