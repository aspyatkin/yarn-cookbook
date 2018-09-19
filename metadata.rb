name 'yarn'
maintainer 'Alexander Pyatkin'
maintainer_email 'aspyatkin@gmail.com'
license 'MIT'
description 'Install Yarn package manager'
long_description ::IO.read(::File.join(::File.dirname(__FILE__), 'README.md'))
version '0.4.2'

provides 'yarn::default'
recipe 'yarn::default', 'Install or upgrade Yarn'

provides 'yarn::repository'
recipe 'yarn::repository', 'Add Yarn repository to a system'

provides 'yarn::install_package'
recipe 'yarn::install_package', 'Install Yarn'

provides 'yarn::upgrade_package'
recipe 'yarn::upgrade_package', 'Install the latest version of Yarn'

provides 'yarn_install[run]'
provides 'yarn_run[run]'

scm_url = 'https://github.com/aspyatkin/yarn-cookbook'
source_url scm_url if respond_to?(:source_url)
issues_url "#{scm_url}/issues" if respond_to?(:issues_url)

depends 'apt'

chef_version '~> 12'
supports 'debian', '>= 7.0'
supports 'ubuntu', '>= 14.04'
supports 'centos', '>= 7.0'
supports 'redhat', '>= 7.0'
supports 'amazon'
