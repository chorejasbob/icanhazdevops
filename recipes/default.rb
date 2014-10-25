# Encoding: utf-8
#
# Cookbook Name:: icanhazdevops
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#

include_recipe 'apt'
include_recipe 'apache2'

%w[ /var/www/vhosts /var/www/vhosts/icanhazdevops.com ].each do |path|
  directory path do
    owner node['apache']['user']
    group node['apache']['group']
    mode '0755'
  end
end

web_app "icanazdevops.com" do
  server_name "icanazdevops.com"
  server_aliases "www.icanhazdevops.com"
  docroot "/var/www/vhosts/icanhazdevops.com"
end

node.default["iptables"]["install_rules"] = false

include_recipe 'iptables'
iptables_rule "iptables_default"
