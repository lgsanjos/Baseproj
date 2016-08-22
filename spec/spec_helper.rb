# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'database_cleaner'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.include FactoryGirl::Syntax::Methods
  config.include ActiveJob::TestHelper
  # == Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  config.mock_with :rspec

  config.before(:suite) do
    FactoryGirl.find_definitions
    ActiveRecord::Base.establish_connection Rails.env.to_sym
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean

    system("cat /dev/null > #{Rails.root.join('log', 'test.log')}")
  end

  config.before(:each) do
    ActiveRecord::Base.establish_connection Rails.env.to_sym
    DatabaseCleaner.start
  end

  config.after(:each) do
    ActiveRecord::Base.establish_connection Rails.env.to_sym
    DatabaseCleaner.clean
  end
end
