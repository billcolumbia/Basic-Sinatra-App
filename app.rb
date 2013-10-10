require 'sinatra'
require 'slim'
require 'coffee-script'
require 'sass'
require_relative 'asset_compiler'

get '/' do
  slim :index
end

use SassHandler
use CoffeeHandler
set :public, File.dirname(__FILE__) + '/public'
set :views, File.dirname(__FILE__) + '/views'
set :bind, '0.0.0.0'
