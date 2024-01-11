execute "apt-get-update" do
  command "apt-get update"
  ignore_failure true
end
package 'fontconfig' do
  action :install
end

package 'openjdk-11-jre' do
  action :install
end
