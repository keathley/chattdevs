source 'https://rubygems.org'

gem 'rails', '4.0.0'
gem 'unicorn'
gem 'jbuilder', '~> 1.2'
gem 'omniauth'
gem 'omniauth-github'
gem 'foreman'
gem 'kaminari'

# Assets
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'purecss-rails'

# Misc.
gem 'faker'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'sqlite3'
  gem 'factory_girl_rails', "~> 4.0"
  gem 'rspec-rails', "~> 2.12"
end

group :test do
  gem 'capybara', "~> 2.1"
  gem 'shoulda-matchers'
end

group :doc do
  gem 'sdoc', require: false
end
