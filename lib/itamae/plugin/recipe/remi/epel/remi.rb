version = node[:platform_version][0]

package 'http://rpms.famillecollet.com/enterprise/remi-release-#{version}.rpm' do
  not_if 'rpm -q remi-release'
end

template "/etc/yum.repos.d/remi.repo" do
  owner "root"
  group "root"
  variables(version: version)
  source "remi.repo.erb"
end
