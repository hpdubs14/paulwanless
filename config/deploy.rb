# bundler bootstrap
require 'bundler/capistrano'

#main details
set :application, "50.116.52.170:22"
role :web, "50.116.52.170:22"                          # Your HTTP server, Apache/etc
role :app, "50.116.52.170:22"                          # This may be the same as your `Web` server
role :db,  "50.116.52.170:22", :primary => true        # This is where Rails migrations will run
# role :db,  "your slave db-server here"


set :deploy_to, "/var/www/paulwanless"
set :deploy_via, :remote_cache
set :user, "passenger"
set :use_sudo, false


#repo details
set :scm, "git"
set :scm_username, "passenger"
set :repository,  "git@github.com:zigloo99/paulwanless.git"
set :branch, "master"
set :git_enable_submodules, 1
set :scm_verbose, true
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`


#task
namespace :deploy do
  desc "Restarting Passenger with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end




# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end