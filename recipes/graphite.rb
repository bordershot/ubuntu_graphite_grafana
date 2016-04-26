#
# Cookbook Name:: ubuntu_graphite_grafana
# Recipe:: graphite
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'graphite-carbon'
package 'graphite-web'

#if grafana
execute 'echo "ProxyPass \"/grafana\" \"http://localhost:3000\"" > /etc/apache2/sites-available/apache2-graphite.conf'

execute 'cat /usr/share/graphite-web/apache2-graphite.conf >> /etc/apache2/sites-available/apache2-graphite.conf'
execute 'a2ensite apache2-graphite'

# Possible
# postgres
#syncdb?  Do I need to syncdb if I don't install pgsql?
# configuration

# should be: notifies :restart, 'service[apache2]', :delayed
service 'apache2' do
  action :restart
end
