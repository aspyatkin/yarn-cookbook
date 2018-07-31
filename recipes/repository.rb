#
# Cookbook Name:: yarn
# Recipe:: repository
#
# Author: Alexander Pyatkin <aspyatkin@gmail.com>
# Author: Dieter Blomme <dieterblomme@gmail.com>
#
# Copyright 2018
#

case node['platform_family']
when 'debian'
  include_recipe 'apt::default'

  apt_repository 'yarn' do
    uri node['yarn']['package']['repository']['uri']
    distribution node['yarn']['package']['repository']['distribution']
    key node['yarn']['package']['repository']['key']
    components node['yarn']['package']['repository']['components']
    action :add
  end
when 'rhel', 'amazon'
  yum_repository 'yarn' do
    baseurl node['yarn']['package']['repository']['uri']
    gpgkey  node['yarn']['package']['repository']['key']
  end
end
