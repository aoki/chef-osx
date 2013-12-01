#
# Cookbook Name:: cache_clear
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

tmp = Chef::Config[:file_cache_path]

execute "Cache clear" do
  command   "rm -rf #{tmp}/*"
  only_if  { tmp != "" }
end
