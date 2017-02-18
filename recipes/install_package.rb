#
# Cookbook Name:: yarn
# Recipe:: install_package
#
# Author: Alexander Pyatkin <aspyatkin@gmail.com>
# Author: Dieter Blomme <dieterblomme@gmail.com>
#
# Copyright 2017
#

include_recipe 'yarn::repository'

package 'jenkins' do
  version node['yarn']['package']['version']
end
