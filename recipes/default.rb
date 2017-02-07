include_recipe \
  "yarn::#{node['yarn']['upgrade_package'] ? 'upgrade' : 'install'}_package"
