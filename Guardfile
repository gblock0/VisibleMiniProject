# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec' command
  # watch(/^.+\.gemspec/)
end

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{assets/templates/.+\.(slim|jade)})
  watch(%r{(app|lib|vendor)/assets/\w+/(.+\.(js|html|coffee)).*})  { |m| "/assets/#{m[2]}" }
  watch(%r{(app|lib|vendor)/assets/.+\.styl})  { |m| "/assets/stylesheets/stylized_application.css" }
  watch(%r{(app|lib|vendor)/assets/\w+/.+\.scss})  { |m| "/assets/stylesheets/sassy_application.css" }
end
