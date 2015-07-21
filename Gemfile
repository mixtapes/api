source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', '4.2.3'

gem 'rails-api'
gem 'active_model_serializers', github: 'rails-api/active_model_serializers'

gem 'responders', github: 'plataformatec/responders'

gem 'mongoid', github: 'mongoid/mongoid'
gem 'bson_ext'

group :development do
  gem 'spring'
  gem 'guard-rspec', require: false
end

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
end

group :development, :test do
  gem 'pry-byebug'
  gem 'rspec-rails'
end
