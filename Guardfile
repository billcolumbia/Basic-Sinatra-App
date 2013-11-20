# Compile with Compass and Sass
guard 'compass' do
  watch(%r{assets/stylesheets.+\.(sass|scss)$})
end

# Reload the browser when assets or templates change
guard 'livereload' do
  watch(%r{views/.+\.(erb|slim|html)})
  watch(%r{public/.+\.(css|js|html)})
end

# CoffeeScript Compilation
guard 'coffeescript', :input => 'assets/js', :output => 'public/js'
