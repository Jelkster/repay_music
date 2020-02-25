source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4', '>= 5.2.4.1' # , github: 'rails/rails'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5' # github: 'turbolinks/turbolinks' # '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Sleek, intuitive, and powerful front-end framework for faster and easier web development.
gem 'bootstrap', github: 'twbs/bootstrap-rubygem' # , ref: '23b55fc0e064a9ccc105320ba8f05c99b7fad61a' # '~> 4.0.0.alpha3'
# Just the right amount of Rails eager loading
gem 'goldiloader', '~> 3.1.0', '>= 3.1.1'
# Rails engine with helpers and JavaScript for displaying times and dates to users in their local time.
gem 'local_time'
# Font and CSS toolkit. Read more: http://fortawesome.github.io/Font-Awesome/
# TODO: replace via yarn?
gem 'font-awesome-rails'
# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for modern web app frameworks and ORMs
gem 'kaminari', github: 'amatsuda/kaminari'
# Flexible authentication solution
gem 'devise'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: [:mri, :mingw, :x64_mingw]
  # Behaviour Driven Development for Ruby.
  # gem 'rspec-core', github: 'rspec/rspec-core'
  # gem 'rspec-expectations', github: 'rspec/rspec-expectations'
  # gem 'rspec-mocks', github: 'rspec/rspec-mocks'
  gem 'rspec-rails', '~> 3.5' # github: 'rspec/rspec-rails'
  # gem 'rspec-support', github: 'rspec/rspec-support'
  gem 'rails-controller-testing' # , github: 'rails/rails-controller-testing' # https://github.com/rspec/rspec-rails/issues/1393
  # gem 'cucumber-rails', require: false, github: 'cucumber/cucumber-rails'
  gem 'database_cleaner' # , github: 'DatabaseCleaner/database_cleaner'
  gem 'page-object' # , github: 'cheezy/page-object'
  # One-liners that test common Rails functionality.
  gem 'shoulda-matchers' # , github: 'thoughtbot/shoulda-matchers'
  # Fixtures replacement
  gem 'factory_girl_rails' # , github: 'thoughtbot/factory_girl_rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', require: false
end

group :production do
  gem 'rails_12factor' # https://devcenter.heroku.com/articles/getting-started-with-rails5
  gem 'newrelic_rpm'
  gem 'rack-timeout' # https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#timeout
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
