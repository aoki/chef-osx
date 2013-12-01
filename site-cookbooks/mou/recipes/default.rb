#
# Cookbook Name:: mou
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

osxzip_package "Mou" do
  app     "Mou"
  source  "http://mouapp.com/download/Mou.zip"
  not_if  { File.exists?("/Applications/Mou.app") }
end
