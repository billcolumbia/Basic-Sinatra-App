# Quasar
A small starting point for a Sinatra app. Good for prototyping.

## Out of the box
Live Reload
Sass
CoffeeScript
Slim / Erb

## Usage
- Clone the repo
- Cd into repo and run `bundle`
- In a terminal run `ruby app.rb`
- In a new terminal tab or window run `guard`
- Make sure you have the [Live Reload Browser Extension](http://feedback.livereload.com/knowledgebase/articles/86242-how-do-i-install-and-use-the-browser-extensions-)
- Activate the extension by clicking on it while on your projects URL
- Get prototyping!!!

## Deployment
- To deploy to heroku, have the [toolbelt installed](https://toolbelt.heroku.com/)
- run `heroku create APPNAME` more info on [heroku](https://devcenter.heroku.com/articles/git)
- run `git push heroku master`, if pushing a branch that's not master `git push heroku localbranchname:master`
- open browser and see if it worked, if there are errors, make sure you ran bundle and commited with `Gemfile.lock` checked-in.


