include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
# instal ruby
rbenv_ruby node['rbenv_ruby']['global']