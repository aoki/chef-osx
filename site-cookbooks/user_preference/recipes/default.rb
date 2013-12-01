#
# Cookbook Name:: user_preference
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

mac_os_x_userdefaults "full keyboard access to all controls" do
  domain "AppleKeyboardUIMode"
  global true
  value "2"
end
