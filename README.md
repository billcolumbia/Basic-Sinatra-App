# Quasar
A small starting point for a Sinatra app. Good for prototyping.

## Out of the box
- Live Reload
- Sass + Compass
- CoffeeScript
- Slim / Erb

## Usage
- Clone the repo
- `cd` into repo and run `bundle`
- Run `ruby app.rb`
- In a new terminal tab or window run `guard`
- Make sure you have the [Live Reload Browser Extension](http://feedback.livereload.com/knowledgebase/articles/86242-how-do-i-install-and-use-the-browser-extensions-)
- Activate the extension by clicking the button in your browser while at your projects URL (`0.0.0.0:4567` or can be changed in `app.rb`)
- Get prototyping!!!

##### Layouts
Quasar uses layouts by default now. In `app.rb` you can specify if the view should be rendered using a layout:
```ruby
# Routes
get '/' do
  @content = data["content"]
  # Using default layout
  slim :view_name
  # Using a specific layout
  slim :view_name, :layout => :layout_view_name
  # Using no layout
  slim :view_name, :layout => false
end
```

## Deployment
- To deploy to heroku, have the [toolbelt installed](https://toolbelt.heroku.com/)
- run `heroku create APPNAME` more info on [heroku](https://devcenter.heroku.com/articles/git)
- run `git push heroku master`, if pushing a branch that's not master `git push heroku localbranchname:master`
- open browser and see if it worked, if there are errors, make sure you ran bundle and commited with `Gemfile.lock` checked-in.


