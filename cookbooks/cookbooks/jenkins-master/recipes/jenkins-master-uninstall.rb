service node['jenkins-master']['service_name'] do
  service_name node['jenkins-master']['service_name']
  action [ :stop ]
end

package node['jenkins-master']['pkg_name'] do
  action :remove
end

file File.join(node['jenkins-master']['sysconfig_dir'], node['jenkins-master']['pkg_name']) do
  action :delete
  only_if { ::File.exist? File.join(node['jenkins-master']['sysconfig_dir'], node['jenkins-master']['pkg_name']) }
end

# we leave the jenkins-master logs in /var/log/jenkins-master for post-mortems
