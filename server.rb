require 'bundler/setup'
require 'sinatra'
require 'honeybadger'

Honeybadger.configure do |config|
  config.api_key = 'my api key'
  config.ignore << 'Sinatra::NotFound'
end

use Honeybadger::Rack

get '/' do
  raise "Sinatra has left the building"
end
