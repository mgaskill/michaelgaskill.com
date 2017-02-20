# config valid only for current version of Capistrano
lock '3.7.2'

set :application, 'michaelgaskill.com'
set :repo_url, 'https://github.com/mgaskill/michaelgaskill.com.git'
set :branch, 'master'

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets')


# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/rails/michaelgaskill.com"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

set :unicorn_pid, "#{current_path}/tmp/pids/unicorn.pid"

# Deploy task for importing fixture data
#
namespace :deploy do
  desc 'Migrate Data Fixtures'
  task import_fixtures: [:set_rails_env] do
    on roles :app do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, "db:fixture:import"
        end
      end
    end
  end

  after 'deploy:migrate', "deploy:import_fixtures"
end

# Deploy tasks for managing the unicorn server
#
namespace :deploy do
  %w{start stop restart}.each do |command|
    desc "#{command} the Unicorn server"
    task command do 
      on roles :app do
        execute "sudo service unicorn #{command}"
      end
    end
  end

  # see: http://vladigleba.com/blog/2014/04/10/deploying-rails-apps-part-6-writing-capistrano-tasks/
  desc "Verify that local git version is in sync with the remote master head"
  task :check_revision do
    unless `git rev-parse HEAD` == `git rev-parse origin/master`
      puts "WARNING: HEAD is not the same as origin/master"
      puts "Run `git push` to sync changes"
      exit
    end
  end

  before :deploy, "deploy:check_revision"
  after :deploy, "deploy:restart"
  after :rollback, "deploy:restart"
end
