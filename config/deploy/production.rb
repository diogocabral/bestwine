set :stage, :production

set :rvm_type, :system

server 'diogo.4techlabs.com.br', user: 'bestwine', roles: %w{web}

set :deploy_to, '/home/bestwine/app'
set :rails_env, 'production'
set :branch, 'master'

set :rvm_ruby_version, '2.1.5'
