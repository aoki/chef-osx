#
# Cookbook Name:: xcode-clt
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

tmp = Chef::Config[:file_cache_path]
apple_id = ''
apple_pass = ''


bash 'xcode-clt' do
  code <<-EOC
    curl -o #{tmp}/adc_download.sh -L https://raw.github.com/ringohub/adc-download/master/adc_download.sh
    expect -c " set timeout 10; spawn bash #{tmp}/adc_download.sh http://adcdownload.apple.com/Developer_Tools/command_line_tools_os_x_mavericks_for_xcode__late_october_2013/command_line_tools_os_x_mavericks_for_xcode__late_october_2013.dmg; expect "ADC Username:"; send '#{apple_id}'; expect "Password:"; send '#{apple_pass}'; expect eof "
  EOC
end

