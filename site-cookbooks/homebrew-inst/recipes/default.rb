#
# Cookbook Name:: homebrew-inst
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "homebrew-inst" do
  user node['homebrew-inst']['user']
  command 'ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"'
  not_if { File.exists?("/usr/local/bin/brew") }
end
