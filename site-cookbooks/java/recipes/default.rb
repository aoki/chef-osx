#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dmg_package "Java 7 Update 45" do
  dmg_name  "jre-7u45-macosx-x64"
  type  "pkg"
  source  "http://sdlc-esd.sun.com/ESD6/JSCDL/jdk/7u45-b18/jre-7u45-macosx-x64.dmg?AuthParam=1385821908_8cde29c762dc369715a520e5e50dd8d4&GroupName=JSC&FilePath=/ESD6/JSCDL/jdk/7u45-b18/jre-7u45-macosx-x64.dmg&File=jre-7u45-macosx-x64.dmg&BHost=javadl.sun.com"
  checksum "b7626e55ceb189a694ae446ebd2bc0a195030417c3ea7c009f1a9adb422b4a10"
  action  :install
#  not_if {}
end
