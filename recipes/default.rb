#
# Cookbook:: my_iis
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'iis::default'
include_recipe 'iis::mod_aspnet45'

ms_dotnet_framework '4.6.2' do
  action            :install
  include_patches   true
  perform_reboot    true
  require_support   true
end

# stop and delete the default site
iis_site 'Default Web Site' do
  action [:stop, :delete]
end

# Create folder d:\candidateportal\wwwroot\candidateportal
directory "c:\\candidateportal\\wwwroot\\candidateportal" do
  action :create
  recursive true
  rights :full_control, 'Administrator', :applies_to_children => true
end

# Create app pool called candidateportal
iis_pool 'candidateportal' do
  runtime_version "4.0"
  pipeline_mode :Integrated
  action [:add, :start]
end

# Create website called 'candidateportal',
# set binding to port 80
# Set file root to d:\candidateportal\wwwroot
# Set log_directory: 'D:\candidateportal_Logs'
iis_site 'candidateportal' do
  protocol :http
  port 80
  path 'c:\candidateportal\wwwroot'
  application_pool 'candidateportal'
  log_directory 'c:\candidateportal_Logs'
  action :add
end

# Set advanced_logging: true
# This is enabled through the windows_feature IIS-CustomLogging

# Create a virtual application under the candidateportal website called candidateportal
iis_app 'candidateportal' do
  physical_path 'd:\candidateportal\wwwroot\candidateportal'
  application_pool 'candidateportal'
  action :add
end
