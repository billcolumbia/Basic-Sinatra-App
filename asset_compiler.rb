class SassHandler < Sinatra::Base
  set :views, File.dirname(__FILE__) + '/assets/stylesheets'

  get '/css/*.css' do
    filename = params[:splat].first
    sass filename.to_sym
  end
end

class CoffeeHandler < Sinatra::Base
  set :views, File.dirname(__FILE__) + '/assets/js'

  get "/js/*.js" do
    filename = params[:splat].first
    coffee filename.to_sym
  end
end
