#
# Cookbook Name:: iterm2
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

osxzip_package "iTerm" do
  app      "iTerm"
  source   "http://www.iterm2.com/downloads/stable/iTerm2_v1_0_0.zip"
  checksum "2afad022b1e1f08b3ed40f0c2bde7bf7cce003852c83f85948c7f57a5578d9c5"
  not_if   { File.exists?("/Applications/iTerm.app") }
end
