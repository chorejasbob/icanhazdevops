# Encoding: utf-8
#
# Cookbook Name:: icanhazdevops
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#

if platform_family?("debian")
  include_recipe 'apt'
end
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

template '/var/www/vhosts/icanhazdevops.com/index.html' do
  source 'index.html.erb'
end

service "apache2" do
  supports :restart => true, :stop => true, :start => true
  action :restart
end

if platform_family?("debian")
  %w(vim screen python ruby ruby-dev curl git make).each do |needed|
    package needed do
      action :install
    end
  end
end

if platform_family?("rhel")
  %w(vim screen python ruby ruby-devel rubygems curl git gcc g++ make automake autoconf).each do |needed|
    package needed do
      action :install
    end
  end
end

gem_package "fog" do
  action :install
end

node.default["iptables"]["install_rules"] = false


include_recipe 'iptables'
iptables_rule "iptables_default"
