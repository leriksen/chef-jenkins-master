execute 'jenkins-master-service-status' do
  command '/usr/bin/systemctl status jenkins-master.service'
  cwd 'usr/bin'
  action :run
  user 'root'
  group 'root'
  live_stream true
end