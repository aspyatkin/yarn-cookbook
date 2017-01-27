name 'yarn'
maintainer 'Alexander Pyatkin'
maintainer_email 'aspyatkin@gmail.com'
license 'MIT'
description 'Install Yarn package manager'
long_description ::IO.read(::File.join(::File.dirname(__FILE__), 'README.md'))
version '0.1.1'

scm_url = 'https://github.com/aspyatkin/yarn-cookbook'
source_url scm_url if respond_to?(:source_url)
issues_url "#{scm_url}/issues" if respond_to?(:issues_url)

supports 'ubuntu'
