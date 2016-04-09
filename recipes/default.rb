#
# Cookbook Name:: php-cookbook
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

apt_repository 'php5-5.6' do
  uri 'ppa:ondrej/php5-5.6'
  distribution node['lsb']['codename']
  action :add
end

include_recipe 'php'

# update the main pear channel
php_pear_channel 'pear.php.net' do
  action :update
end

# update the main pecl channel
php_pear_channel 'pecl.php.net' do
  action :update
end

php_fpm_pool 'default' do
  additional_config node['php']['fpm_pool_additional_config']
  action :install
end

include_recipe 'php-cookbook::module'
