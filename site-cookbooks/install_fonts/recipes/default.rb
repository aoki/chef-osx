#
# Cookbook Name:: install_fonts
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

url = "https://github.com/Lokaltog/powerline-fonts/raw/master/SourceCodePro/Sauce%20Code%20Powerline%20"
inst_dir = "/Library/Fonts"
font_name = "Sauce Code Powerline"

%w{Black Bold ExtraLight Light Medium Regular Semibold}.each do |type|
  execute "SauceCodePowerline#{type}" do
    command "curl -L #{url}#{type}.otf -o '#{inst_dir}/#{font_name} #{type}.otf'"
    not_if  { File.exists?("#{inst_dir}/#{font_name} #{type}.otf") }
  end
end
