#
# Cookbook Name:: yarn
# Recipe:: default
#
# Author: Alexander Pyatkin <aspyatkin@gmail.com>
# Author: Dieter Blomme <dieterblomme@gmail.com>
#
# Copyright 2017
#

include_recipe \
  "yarn::#{node['yarn']['upgrade_package'] ? 'upgrade' : 'install'}_package"
