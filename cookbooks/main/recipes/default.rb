#
# Cookbook Name:: main
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "git-core"
package 'git'
package 'python-software-properties'
package 'curl'
package "build-essential"

#Redis and resque requarements 
include_recipe "apt"
include_recipe "ruby_build"
include_recipe "rbenv::user"
include_recipe "ulimit"

package "curl"
#include_recipe redisio::install"
#include_recipe "redisio::enable"

gem_package "ruby-shadow" do
  action :install
end
gem_package "bundler"


user node[:user][:name] do
  password node[:user][:password]
  gid "admin"
  home "/home/#{node[:user][:name]}"
  supports manage_home: true
  shell "/bin/bash"
end
