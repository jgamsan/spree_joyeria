require "bundler/capistrano"
set :rvm_ruby_string, ENV['GEM_HOME'].gsub(/.*\//,"")
set :application, "joyeria"
set :domain, "mail.galiclick.com"
set :user, "galiclick"
set :repository, "git@github.com:jgamsan/spree_joyeria.git"
set :scm, :git
set :keep_releases, 2
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
set :use_sudo, false
set :deploy_via, :remote_cache
set :deploy_to, "/home/galiclick/public_html/#{application}"
set :rails_env, "production"

task :demo do
  role :web, "#{domain}:54101"
  role :app, "#{domain}:54101"
  role :db,  "#{domain}:54101", :primary=>true
end

task :main do
  role :web, "#{domain}:54102"
  role :app, "#{domain}:54102"
  role :db,  "#{domain}:54102", :primary=>true
end

namespace :customs do
  task :symlink, :roles => :app do
    run "ln -nfs #{shared_path}/system/spree #{release_path}/public"
    #run "ln -nfs #{shared_path}/system/products #{release_path}/vendor"
  end
end
after "deploy:create_symlink","customs:symlink"
after "deploy", "deploy:cleanup"
#set :whenever_command, "bundle exec whenever"
#require "whenever/capistrano"
require "rvm/capistrano"
require 'capistrano-unicorn'
