execute 'apt-get-update' do
  command "apt-get update"
end

package 'fontconfig' do
  action :install
end

package 'openjdk-17-jre' do
  action :install
end

execute 'install-jenkins-apt-repo-key' do
  command 'wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key'
end

file '/etc/apt/sources.list.d/jenkins.list' do
  content <<~END
    deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/
  END
end

# need to update after changing apt sources
execute 'apt-get-update' do
  command "apt-get update"
end

package 'jenkins' do
  action :install
end

