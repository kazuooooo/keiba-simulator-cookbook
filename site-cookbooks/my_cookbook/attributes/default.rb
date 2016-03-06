node.override[:rbenv_install_rubies][:global_version] = '2.2.4'
node.override[:rbenv_install_rubies][:gems] = ['bundler', 'rbenv-rehash', 'pry']
node.override[:rbenv_install_rubies][:other_versions] = []
node.override[:rbenv_install_rubies][:lib_packages] = []
# mysql
node.default["staging_cookbook"]["server_name"] = "vagrant.local"
node.default["mysql"]["staging_db_name"] = "db_staging"
node.default["mysql"]["staging_user_name"] = "user_staging"
node.default["mysql"]["staging_password"] = "pass_staging"
node.default["mysql"]["user"] = "vagrant"
node.default["mysql"]["group"] = "vagrant"
