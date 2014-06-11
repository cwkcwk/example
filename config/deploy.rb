SSHKit.config.command_map[:rake] = 'bundle exec rake'
# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'skyline'

set :stages, ['production']

set :repo_url, 'git@bitbucket.org:cwkcwk/horizont.git'

set :branch, 'master'

set :deploy_via, :remote_cache

set :deploy_to, '/var/www/skyline'

set :keep_releases, 5

set :pty, true

set :stage, :production

set :rails_env, 'production'

set :unicorn_workers, 1

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Restarts Phusion Passenger
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
