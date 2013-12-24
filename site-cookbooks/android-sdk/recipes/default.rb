#
# Cookbook Name:: android-sdk
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

tmp = Chef::Config[:file_cache_path]
install_dir = node[cookbook_name]['install_dir']

remote_file "#{cookbook_name}: download" do
  source  'http://dl.google.com/android/android-sdk_r22.3-macosx.zip'
  path    "#{tmp}/android-sdk.zip"
  action  :create_if_missing
end

execute "#{cookbook_name}: install" do
  command <<-EOC
    unzip #{tmp}/android-sdk.zip -d #{install_dir}/android-sdk
    chmod -R 777 #{install_dir}/android-sdk
  EOC
  not_if { File.exists?("#{install_dir}/android-sdk") }
end

log "export ANDROID_HOME=#{install_dir}/android-sdk"
log "export PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools"
