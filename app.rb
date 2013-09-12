require 'rubygems'
require 'sinatra'
require 'sass'
require_relative 'asset_compiler'

gem 'guard-livereload'

get '/' do
  haml :index
end

use SassHandler
use CoffeeHandler
set :public, File.dirname(__FILE__) + '/public'
set :views, File.dirname(__FILE__) + '/views'
