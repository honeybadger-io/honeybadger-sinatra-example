require 'bundler/setup'
require 'sinatra'
require 'sinatra'
require 'honeybadger'

set :honeybadger_api_key, ENV['HONEYBADGER_API_KEY']

set :root, '/foo/bar'

get '/' do
  'Maybe you\'re looking to /fail'
end

get '/fail' do
  fail "Sinatra has left the building"
end
