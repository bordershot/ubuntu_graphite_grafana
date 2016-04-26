#
# Cookbook Name:: ubuntu_graphite_grafana
# Recipe:: memcached
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'memcached'

service 'memcached' do
  action [ :enable, :start ]
end
