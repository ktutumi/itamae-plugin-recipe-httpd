#
# Cookbook Name:: httpd
# Recipe:: default
#

package 'httpd'

template '/etc/httpd/conf/httpd.conf' do
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[httpd]'
end

service 'httpd' do
  action [:enable, :start]
end

