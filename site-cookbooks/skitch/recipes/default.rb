#
# Cookbook Name:: skitch
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

osxzip_package "Skitch" do
  app       "Skitch"
  source    "http://cdn1.evernote.com/skitch/mac/release/Skitch-2.7.zip"
  checksum  "af071ff140fcb52f51123be93ea4b82970a62b9378cd537e6ee741a907d4164e"
  not_if    { File.exists?("/Applications/Skitch.app") }
end
