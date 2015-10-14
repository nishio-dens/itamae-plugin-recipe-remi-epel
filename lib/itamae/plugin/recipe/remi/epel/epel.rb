version = node[:platform_version][0]

package 'http://ftp.iij.ad.jp/pub/linux/fedora/epel/epel-release-latest-#{version}.noarch.rpm' do
  not_if 'rpm -q epel-release'
end
