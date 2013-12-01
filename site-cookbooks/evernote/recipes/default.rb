#
# Cookbook Name:: evernote
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dmg_package "Evernote" do
  dmg_name "Evernote_402231"
  source "http://cdn1.evernote.com/mac/release/Evernote_402231.dmg"
  checksum "c45df16566582dfea0dc8585e115ca12eeb507ebab5870d14a3cf7f0cdaa306d"
  accept_eula true
#  action :install
  not_if {File.exists?("/Applications/Evernote.app")}
end
