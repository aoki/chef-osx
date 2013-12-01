#
# Cookbook Name:: ua101
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

tmp = Chef::Config[:file_cache_path]
dlUrl = 'http://lib.roland.co.jp/support/jp/downloads/res/'

case node['platform_version']
when /10.8/
  dlUrl << '62472116/ua101_mx8d_v100.tgz'
  pkgid = 'jp.co.roland.RDUSB007D.SN108'
  pkgsum = 'ee2009016f9e71d773377faf900df71df9102a683b6f6931c5b7dd76c898f0eb'
  dlfile = 'ua101_mx8d_v100.tgz'
  filename = 'UA101USBDriver/UA101_USBDriver108.pkg'
when /10.9/
  dlUrl << '63061732/ua101_mx9d_v100.tgz'
  pkgid = 'jp.co.roland.UA101.app.109.pkg'
  pkgsum = 'c9354853151bb1ce1d8858b3943f4fd21cf5b1478988d2f8f4896c0c64bfbdd0'
  dlfile = 'ua101_mx9d_v100.tgz'
  filename = 'ua101_mx9d_v100/UA101_USBDriver109.pkg'
else
  dlUrl = ''
end

bash "UA-101 driver" do
  cwd tmp
  code <<-EOH
    wget #{dlUrl}
    tar -zxf #{dlfile} #{filename}
    installer -pkg "#{tmp}/#{filename}" -target / 
  EOH
  not_if "pkgutil --pkgs | grep #{pkgid}"
  not_if { File.exist? "#{tmp}/#{dlfile}" }
end
