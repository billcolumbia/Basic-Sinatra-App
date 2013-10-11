# Dependencies
require 'sinatra'
require 'slim'
require 'coffee-script'
require 'sass'
require 'yaml'
require_relative 'asset_compiler'

# Helpers
helpers do
  # Map YAML
  def data(source='data.yaml')
    @data ||= YAML.load_file(source)
  end
end

# Routes
get '/' do
  @content = data["content"]
  slim :index
end

# Compliers
use SassCompiler
use CoffeeCompiler

# App Setup / Config
set :public, File.dirname(__FILE__) + '/public'
set :views, File.dirname(__FILE__) + '/views'
set :bind, '0.0.0.0'
