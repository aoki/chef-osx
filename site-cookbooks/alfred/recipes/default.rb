#
# Cookbook Name:: alfred
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

osxzip_package "Alfred 2" do
  app       "Alfred 2"
  source    "http://cachefly.alfredapp.com/Alfred_2.1.1_227.zip"
  checksum  "d19fe7441c6741bf663521e561b842f35707b1e83de21ca195aa033cade66d1b"
  not_if    { File.exists?("/Applications/Alfred 2.app") }
end
