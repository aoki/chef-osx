#
# Cookbook Name:: intellij
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
version = node[cookbook_name]['version']

if version == 12 then
  dmg_package "IntelliJ IDEA 12" do
    dmg_name  "ideaIU-12.1.6"
    source "http://download-ln.jetbrains.com/idea/ideaIU-12.1.6.dmg"
    action :install
    not_if { File.exists?("/Applications/IntelliJ IDEA 12.app") }
  end
else
  dmg_package "IntelliJ IDEA 13" do
    dmg_name  "ideaIU-13.0.1"
    source "http://download-ln.jetbrains.com/idea/ideaIU-13.0.1.dmg"
    action :install
    not_if { File.exists?("/Applications/IntelliJ IDEA 13.app") }
  end
end
