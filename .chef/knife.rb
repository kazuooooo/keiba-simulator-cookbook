log_level                :info
log_location             STDOUT
node_name                'matsumotokazuya'
client_key               '/Users/matsumotokazuya/desktop/chef_rails/rails_env_chef/.chef/matsumotokazuya.pem'
validation_client_name   'chef-validator'
validation_key           '/etc/chef-server/chef-validator.pem'
chef_server_url          'https://matsumotokazuya.local:443'
syntax_check_cache_path  '/Users/matsumotokazuya/desktop/chef_rails/rails_env_chef/.chef/syntax_check_cache'

cookbook_path    ["cookbooks", "site-cookbooks"]
node_path        "nodes"
role_path        "roles"
environment_path "environments"
data_bag_path    "data_bags"
encrypted_data_bag_secret ".secret/data_bag_key2"

knife[:berkshelf_path] = "cookbooks"
