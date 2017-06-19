ruby '2.4.1'

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.0'
# Use MySQL as the database for Active Record
gem 'mysql2'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use Redis adapter to Rack::Session, Rack::Cache, I18n and Cache
gem 'redis-rails'
# Map Redis types directly to Ruby objects
# gem 'redis-objects'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator
gem 'kaminari'
# ActiveModel::Serializer implementation and Rails hooks
gem 'active_model_serializers'
# Optimized JSON
gem 'oj'
# A pure ruby implementation of the RFC 7519 OAuth JSON Web Token (JWT) standard
gem 'jwt'
# Simple Rails app configuration
gem 'figaro'
# Make any Ruby object quack like ActiveRecord
gem 'active_type', '~> 0.7.0'
# AASM - State machines for Ruby classes
gem 'aasm'
# Simple, efficient background processing for Ruby
# gem 'sidekiq'

# Role management library with resource scoping
gem 'rolify', '~> 5.1'
# Object oriented authorization for Rails applications
gem 'pundit', '~> 1.1'

group :development, :test do
  gem 'awesome_print', '~> 1.7'
  gem 'byebug'
  gem 'sqlite3'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'codeclimate-test-reporter', '~> 1.0.0'
  gem 'minitest-reporters'
  gem 'simplecov'
end
