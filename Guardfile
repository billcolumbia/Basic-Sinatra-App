guard 'livereload' do
  watch(%r{views/.+\.(erb|slim)$})
  watch(%r{assets/stylesheets.+\.(sass|scss|css)$})
  watch(%r{assets/js.+\.(js|coffee)$})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html))).*}) { |m| "/assets/#{m[3]}" }
end
