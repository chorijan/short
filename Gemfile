source "https://rubygems.org"

gem "rails", '3.2.11'

gem "mysql2"

gem "haml"
gem "sass"
gem "jquery-rails"

# Pagination
gem "will_paginate"

# Exceptions
gem "airbrake"

# Deployment
gem "capistrano"
gem "unicorn"

# Rails configrations
#gem "rails_config"

# Authentication
# gem "devise"
# gem "bcrypt-ruby"
# gem 'omniauth', '>= 1.1.0'
# gem 'omniauth-twitter'
# gem 'omniauth-facebook'
# gem 'omniauth-github'
# gem 'omniauth-linkedin'
# gem 'omniauth-google-oauth2'
# gem 'omniauth-tumblr'

# Authorization
# gem "cancan"
# gem "rolify"


# Tools & Utilities for Voupe apps
gem "gonzo"

# Voupe Contact Form
#gem "voupe_contact"

# Email delivery with Postmark
gem "simple_postmark"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem "compass-rails"
end

group :development do
  gem "powder"
  gem "quiet_assets"
  gem "app_reset"
  gem "letter_opener"
  gem "haml-rails"
  gem "annotate", :git => "git://github.com/ctran/annotate_models.git"
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "faker"
  gem "spork"
  gem "guard"
  gem "guard-rspec"
  gem "guard-spork"
  gem "growl"
  gem "database_cleaner"  
end

group :test do
  gem "capybara"
  gem "email_spec"
  gem "launchy"
  gem "simplecov", :require => false
end