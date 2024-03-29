source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'rails-i18n', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'devise'
gem 'devise-i18n'

# Javascript
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'lodash-rails' # Equivalent to underscore lib
# Header Dropdown animation
gem 'metismenu-rails', github: 'lanvige/metismenu-rails'
# Menu animation
gem 'jquery-peity-rails'
gem 'zepto-for-rails'
gem 'icheck-rails'
# inline charts
gem 'jquery-sparkline-rails', github: 'cubus/jquery-sparkline-rails'
gem "flot-rails"
gem 'chart-js-rails'
gem 'inline_svg'

# CSS
gem 'sass-rails', '~> 5.0'
gem 'font-awesome-rails'
gem 'animate-rails'
gem 'twitter-bootstrap-rails'

# Html
gem 'slim-rails'

# Needed to deploy on aws
gem 'therubyracer'
gem 'execjs'

group :production do
  gem 'pg', '0.18.4'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_girl'
  gem 'timecop'
  gem 'ffaker'
end

group :development, :test do
  gem 'sqlite3'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'byebug'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'rspec-mocks'
  gem 'rubocop'
  gem 'pry'
  gem 'pry-byebug'
  gem 'ffi'
  gem 'rb-fsevent'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'quiet_assets'
  gem 'spring'

  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-passenger', '~> 0.2.0'
  gem 'capistrano-rails', '~> 1.1', '>= 1.1.7'
  gem 'capistrano-rvm', '~> 0.1.2'
end

