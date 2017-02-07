include_recipe 'yarn::add_apt_repository'

package 'yarn' do
  action :install
end
