service node['jenkins-master']['service_name'] do
  service_name node['jenkins-master']['service_name']
  action [ :stop ]
end