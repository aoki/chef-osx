#
# Cookbook Name:: google_japanese_input
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dmg_package "GoogleJapaneseInput" do
  source "https://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg"
  checksum "1cad917a9ef48dac5088649ee73d20bd965287ef30ab544a94127a07fab51700"
  type "pkg"
  package_id "com.google.pkg.GoogleJapaneseInput"
end
