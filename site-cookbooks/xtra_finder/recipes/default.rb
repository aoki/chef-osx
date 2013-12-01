#
# Cookbook Name:: xtra_finder
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dmg_package "XtraFinder" do
  source "http://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg"
  type  "pkg"
#  package_id "com.lastpass.lpmacosx"
  action :install
end
