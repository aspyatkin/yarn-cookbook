id = 'yarn'

apt_repository 'yarn' do
  uri node[id]['apt_repository']['uri']
  distribution node[id]['apt_repository']['distribution']
  key node[id]['apt_repository']['key_uri']
  components node[id]['apt_repository']['components']
  cache_rebuild true
  action :add
end

package 'yarn' do
  action :install
end
