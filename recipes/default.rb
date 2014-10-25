# Encoding: utf-8
#
# Cookbook Name:: icanhazdevops
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#

include_recipe 'apt'
include_recipe 'apache2'

web_app "icanhazdevops" do
  server_name node['icanhazdevops.com']
  server_aliases ["www.icanhazdevops.com"]
  docroot "/var/www/icanhazdevops.com"
end

node.default["iptables"]["install_rules"] = false

include_recipe 'iptables'
iptables_rule "iptables_default"
