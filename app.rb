# Dependencies
require 'sinatra'
require 'slim'
require 'yaml'

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

# App Setup / Config
set :public, File.dirname(__FILE__) + '/public'
set :views, File.dirname(__FILE__) + '/views'
set :bind, '0.0.0.0'
