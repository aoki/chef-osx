#
# Cookbook Name:: source_tree
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dmg_package "SourceTree" do
  dmg_name  "SourceTree_1.7.4.1.dmg"
  volumes_dir "SourceTree"
  source  "http://downloads.atlassian.com/software/sourcetree/SourceTree_1.7.4.1.dmg"
  checksum  "c5406fb81e8e5e9f3897a6f72e5f3389d0927820e883f1545b1e2db2bcf17c04"
  action  :install
  not_if  { File.exists?("/Applications/SourceTree.app") }
end
