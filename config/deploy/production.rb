set :stage, :production

server '74.207.233.82', user: 'bestwine', roles: %w{web}

set :deploy_to, '/home/bestwine/app'
set :rails_env, 'production'
set :branch, 'master'

set :rvm_ruby_version, '2.2.6'
