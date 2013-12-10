#
# Cookbook Name:: android-sdk
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

tmp = Chef::Config[:file_cache_path]
install_dir = "/Applications"

execute "android-sdk" do
  user
  command <<-EOC
    curl -L 'http://dl.google.com/android/android-sdk_r22.3-macosx.zip' -o #{tmp}/android-sdk.zip
    unzip #{tmp}/android-sdk.zip
    mv android-sdk-macosx #{install_dir}/android-sdk
    chmod -R 777 #{install_dir}/android-sdk
  EOC
  not_if { File.exists?("/Applications/android-sdk") }
end

#execute "path" do
#  command <<-EOC
#  EOC
#end
