source 'https://rubygems.org'

ruby '3.1.4'  # 3.1.6から2.7.7に変更

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bcrypt'
gem 'bootstrap', '~> 4.6.2'
gem 'bootstrap-will_paginate', '1.0.0'
gem 'coffee-rails', '~> 4.2'
gem 'dotenv-rails'
gem 'faker'
gem 'holiday_japan'
gem 'importmap-rails', '~> 2.0'
gem 'jbuilder', '~> 2.5'
gem 'omniauth', '2.1.0'
gem 'omniauth-google-oauth2', '1.1.1'
gem 'omniauth-rails_csrf_protection'
gem 'puma', '~> 6.0'
gem 'rails', '~> 7.0'
gem 'rails-i18n'
gem 'sassc-rails'  # Bootstrap の Sass エンジンとして必要
gem 'sqlite3'
gem 'stimulus-rails'
gem 'terser'
gem 'turbo-rails'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'uglifier'
gem 'will_paginate', '~> 3.3'

group :development do
  gem 'dockerfile-rails', '>= 1.7'
  gem 'listen', '~> 3.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
end

group :production do
  gem 'pg'
end
