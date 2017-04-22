source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.2'
gem 'pg'
gem 'active_model_serializers', '~> 0.10.0'
gem 'puma', '~> 3.0'
gem 'sassc-rails'
gem 'mini_racer'
gem 'uglifier', '>= 1.3.0'

gem 'webpacker'
gem 'foreman'

gem 'figaro'
gem 'fog-aws'
gem 'carrierwave', '>= 1.0.0.rc', '< 2.0'
gem 'carrierwave-base64'
gem 'mini_magick'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'


group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'awesome_print', require:'ap'
  gem 'faker'
  gem 'factory_girl_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
