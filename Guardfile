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

#guard 'rspec', :zeus => true, :bundler => false, :cli => '--tag ~js' do
guard 'rspec', :zeus => true, :bundler => false, all_on_start: false do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/acceptance/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }

  # Rails example
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch(%r{^spec/factories/(.+)\.rb$})                  { "spec" }
  watch(%r{^spec/support/(.+)/(.+)\.rb$})             { "spec" }
end

