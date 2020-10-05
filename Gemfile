source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
gem 'pg'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise'
gem 'countries', require: 'countries/global'
gem 'rails-i18n', '~> 6.0.0'
gem 'draper'
gem "shrine", "~> 3.0"
gem "image_processing", "~> 1.8"

gem 'geocoder'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen'
  gem 'pry'
  gem 'pry-byebug'
  gem 'figaro'
  gem 'awesome_print'
  gem 'rspec-rails', '~> 4.0.0'
  gem 'faker'
end

group :test do
  gem 'simplecov', require: false
  gem 'timecop', '~> 0.8'
  gem 'vcr'
  gem 'webmock'
  gem 'factory_bot_rails', '~> 6.0.0'
  gem 'database_cleaner'
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
