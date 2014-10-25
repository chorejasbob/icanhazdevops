# Encoding: utf-8
#
# Cookbook Name:: icanhazdevops
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#

include_recipe 'apt'
include_recipe 'apache2'

apache_conf 'example' do
  enable true
end

node.default["iptables"]["install_rules"] = false

include_recipe 'iptables'
iptables_rule "iptables_default"
