name 'jenkins-master'
maintainer 'Leif Eriksen'
maintainer_email 'leif.eriksen.au+jenkins-master-chef-github@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures jenkins-master daemon'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.4.29'
chef_version '>= 16.0'
source_url 'https://github.com/leriksen/jenkins-master-chef'
issues_url 'https://github.com/leriksen/jenkins-master-chef/issues'

recipe 'jenkins-master::default', 'Install and configure jenkins-master daemon'
recipe 'jenkins-master::uninstall-jenkins-master', 'Uninstalls jenkins-master daemon'
