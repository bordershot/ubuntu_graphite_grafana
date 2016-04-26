#
# Cookbook Name:: ubuntu_graphite_grafana
# Recipe:: grafana
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

remote_file '/tmp/grafana_2.6.0_amd64.deb' do
  source 'https://grafanarel.s3.amazonaws.com/builds/grafana_2.6.0_amd64.deb'
end

dpkg_package 'grafana' do
  action :install
  source '/tmp/grafana_2.6.0_amd64.deb'
end

#file = Chef::Util::FileEdit.new("/etc/apache2/sites-available/apache2-graphite.conf")
#file.insert_line_if_no_match(/ProxyPass "\/grafana" "http:\/\/localhost\/grafana/, 'http:\/\/localhost\/grafana')
#file.write_file

# need configuration for proxy hostname, etc
service 'grafana-server' do
  action [ :start, :enable ]
  notifies :restart, 'service[apache2]', :delayed
end
