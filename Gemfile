source "https://rubygems.org"

gem "rails", "~> 4.0.0"

# required by newrelic_api gem
gem "activeresource", "~> 4.0.0"

gem "sass-rails", "~> 4.0.0"
gem "bootstrap-sass", "~> 2.3.2"
gem "bootswatch-rails"

gem "mysql2"

# on windows replace with thin gem
gem "unicorn"

gem "faraday"
gem "faraday_middleware"
gem "multi_xml"
gem "libxml-ruby"

# see app/model/sources/number/jenkins_game.rb
gem "nokogiri", "~> 1.6.6.2"

# see app/model/sources/number/new_relic.rb
gem "newrelic_api"

# assets
gem "therubyracer", "0.12.1"
#  #gem "libv8", "3.16.14.0"
gem "uglifier"

group :test, :development do
  gem "debugger"
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "mocha", :require => false
end

group :production do
  gem 'rails_12factor' # remove if not deploying on heroku
  gem "activerecord-postgresql-adapter"
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "foreman"
  gem "spring"
  gem "bullet"
  gem "thin"
  gem "pry-rails"

  gem 'capistrano', '~> 3.2.1'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano-bundler'
  gem 'capistrano3-unicorn'
end

ruby "2.0.0"
