#
# Cookbook Name:: textmate
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

tmp = Chef::Config[:file_cache_path]

execute "TextMate" do
  command <<-EOC
    curl -L "https://api.textmate.org/downloads/release" -o #{tmp}/textmate.tbz
    tar jxf #{tmp}/textmate.tbz -C /Applications
  EOC
  not_if  { File.exists?("/Applications/TextMate.app") }
end
