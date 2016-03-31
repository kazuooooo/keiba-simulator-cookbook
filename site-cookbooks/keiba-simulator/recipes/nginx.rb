include_recipe 'nginx'

nginx_site 'default' do
  enable false
end

template "/etc/nginx/conf.d/nginx.conf" do
  source 'nginx.conf.erb'
  mode 0644
  owner 'ubuntu'
  group 'root'
  notifies :restart, 'service[nginx]'
end