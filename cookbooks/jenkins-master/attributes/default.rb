case node['platform_family']
when 'debian'
#   default['jenkins-master']['sysconfig_dir'] = '/etc/default'
when 'rhel', 'fedora'
end
default['jenkins-master']['var_path'] = '/var/lib/jenkins'