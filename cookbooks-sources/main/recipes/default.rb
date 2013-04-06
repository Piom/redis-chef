#
# Cookbook Name:: main
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "git-core"

#Redis and resque requarements 
include_recipe "apt"
include_recipe "redisio"



user node[:user][:name] do
  password node[:user][:password]
  gid "admin"
  home "/home/#{node[:user][:name]}"
  supports manage_home: true
  shell "/bin/bash"
end
