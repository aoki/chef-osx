#
# Cookbook Name:: intellij
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dmg_package "IntelliJ IDEA 12" do
  dmg_name  "ideaIU-12.1.6"
  source "http://download-ln.jetbrains.com/idea/ideaIU-12.1.6.dmg"
  action :install
  not_if { File.exists?("/Applications/IntelliJ IDEA 12.app") }
end

