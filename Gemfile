source 'https://rubygems.org'
# Gemfileの先頭に追加

ruby '3.1.4'  # 3.1.6から2.7.7に変更

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'sassc-rails'
gem 'bootstrap-sass', '~> 3.4.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'stimulus-rails'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'bcrypt'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'rails', '~> 7.0'

gem 'turbo-rails'
gem 'rails-i18n'
gem 'jquery-rails'
gem 'holiday_japan'
gem 'omniauth', '2.1.0'
gem 'omniauth-google-oauth2','1.1.1'
gem 'omniauth-rails_csrf_protection'
gem 'dotenv-rails'
gem 'tailwindcss-rails', '~> 2.0.0'

gem 'uglifier'
gem 'faker'
gem 'terser'



gem 'ffi', '1.15.5'  
# gem 'capistrano-rails', group: :development
gem 'will_paginate', '~> 3.3' # この行を追加してください。
gem 'bootstrap-will_paginate', '1.0.0' # この行を追加してください。

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "jsbundling-rails", "~> 1.3"

gem "importmap-rails", "~> 2.0"

gem "dockerfile-rails", ">= 1.7", :group => :development

#gem "pg", "~> 1.5"
