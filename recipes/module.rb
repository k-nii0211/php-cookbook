package node['php']['mysql']['package'] do
  action :install
end

pkg = value_for_platform(
    %w(centos redhat scientific fedora amazon oracle) => {
        el5_range => 'php53-gd',
        'default' => 'php-gd'
    },
    'freebsd' => {
        'default' => 'php56-gd'
    },
    'default' => 'php5-gd'
)

package pkg do
  action :install
end

case node['platform_family']
  when 'rhel', 'fedora'
    # centos php compiled with curl
  when 'debian'
    package 'php5-curl' do
      action :install
    end
end
