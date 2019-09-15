source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'bcrypt', '~> 3.1', '>= 3.1.12'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bulma-rails', '~> 0.7.2'
gem 'coffee-rails', '~> 4.2'
gem 'faker', '~> 1.9'
gem 'font-awesome-sass', '~> 5.4.1'
gem 'jbuilder', '~> 2.5'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.2'
gem 'sass-rails', '~> 6.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'will_paginate', '~> 3.1'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'solargraph'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'rails-controller-testing', '1.0.2'
  gem 'minitest',                 '5.11.3'
  gem 'minitest-reporters',       '1.1.14'
  gem 'guard',                    '2.14.1'
  gem 'guard-minitest',           '2.4.6'
end

group :production do
  gem 'fog', '1.42'
  gem 'pg',  '0.20.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
