source 'https://rubygems.org'

ruby '1.9.2'

gem 'rails', '3.2.13'
gem 'thin'
gem 'active_model_serializers', :github => 'rails-api/active_model_serializers'
gem 'identity_client'

group :development, :test do
  gem 'debugger'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

group :assets do
  gem 'sass-rails', '~> 3.2'
  gem 'coffee-rails', '~> 3.2'
  gem 'compass-rails'
  gem 'uglifier'
  gem 'bootstrap-sass', '~> 2.0.3.0'
  gem 'handlebars_assets', '~> 0.9.0'
end

group :development do
  gem 'quiet_assets'
end
