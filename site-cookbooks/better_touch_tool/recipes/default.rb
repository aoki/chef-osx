#
# Cookbook Name:: better_touch_tool
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

osxzip_package "BetterTouchTool" do
  app "BetterTouchTool"
  source "http://www.boastr.de/BetterTouchTool.zip"
  not_if { File.exists?("/Applications/BetterTouchTool.app") }
end
