include_recipe 'nginx'

nginx_site 'default' do
  enable false
end

template "#{node.default['nginx']['source']['conf_path']}" do
  source 'nginx.conf.erb'
  mode 0644
  owner 'ubuntu'
  group 'root'
  notifies :restart, 'service[nginx]'
end