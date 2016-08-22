set :application, 'investling'
set :repo_url, 'git@github.com:lgsanjos/investlings.git'
set :keep_releases, 3

set :rvm_ruby_version, '2.3.1'
set :engine,           'passenger'

set :scm, :git
set :use_sudo, true
set :format, :pretty
set :log_level, :info
set :pty, true

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/sockets', 'vendor/bundle', 'config/settings', 'public/system')
set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  desc 'Restart resque'
  task :restart_resque do
    on roles(:app) do
      # whatever
    end
  end

  desc 'Clear rails cache'
  task :clear_rails_cache do
    on roles(:app) do
      execute "cd #{release_path} && (export RAILS_ENV='#{fetch(:stage)}' ; bundle exec rake tmp:clear)"
    end
  end

  after :publishing, :restart_resque
  after :publishing, :restart
  after 'deploy:finished', :clear_rails_cache
end
