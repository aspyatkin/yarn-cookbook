#
# Cookbook Name:: yarn
# Recipe:: repository
#
# Author: Alexander Pyatkin <aspyatkin@gmail.com>
# Author: Dieter Blomme <dieterblomme@gmail.com>
#
# Copyright 2017
#

case node['platform_family']
when 'debian'
  apt_repository 'yarn' do
    uri node['yarn']['package']['repository']['uri']
    distribution node['yarn']['package']['repository']['distribution']
    key node['yarn']['package']['repository']['key']
    components node['yarn']['package']['repository']['components']
    action :add
    notifies :run, 'execute[apt-get update]', :immediately
  end

  package 'apt-transport-https' do
    action :install
  end
when 'rhel'
  yum_repository 'yarn' do
    baseurl node['yarn']['package']['repository']['uri']
    gpgkey  node['yarn']['package']['repository']['key']
  end
end
