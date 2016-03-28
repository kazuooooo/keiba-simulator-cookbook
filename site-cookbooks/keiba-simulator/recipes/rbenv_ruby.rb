include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
# instal ruby
rbenv_ruby "2.2.4"