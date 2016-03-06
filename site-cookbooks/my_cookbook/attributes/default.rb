node.override[:rbenv_install_rubies][:global_version] = '2.2.4'
node.override[:rbenv_install_rubies][:gems] = ['bundler', 'rbenv-rehash', 'pry']
node.override[:rbenv_install_rubies][:other_versions] = []
node.override[:rbenv_install_rubies][:lib_packages] = []
# mysql
node.default["mysql"]["production_db_name"] = "keiba_simulator_production"
node.default["mysql"]["production_user_name"] = "user_staging"
node.default["mysql"]["production_password"] = "keiba"
node.default["mysql"]["user"] = "ec2-user"
node.default["mysql"]["group"] = "ec2-user"
