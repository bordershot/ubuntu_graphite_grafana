#
# Cookbook Name:: ubuntu_graphite_grafana
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#include_recipe 'apache2::default'
include_recipe 'ubuntu_graphite_grafana::postgresql'
#include_recipe 'ubuntu_graphite_grafana::memcached'
#include_recipe 'ubuntu_graphite_grafana::graphite'
#include_recipe 'ubuntu_graphite_grafana::grafana'
