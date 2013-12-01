#
# Cookbook Name:: app_cleaner
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

osxzip_package "AppCleaner" do
  app "AppCleaner"
  source "http://freemacsoft.net/downloads/AppCleaner_2.0.1.zip"
  checksum  ""
  not_if  { File.exists?("/Applications/AppCleaner.app") }
end
