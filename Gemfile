source "https://rubygems.org"

ruby "2.4.0"

gem 'mysql2', '>= 0.3.18', '< 0.5'
gem "rails", "5.1.2"

# assets
gem "coffee-rails"
gem "mini_racer"
gem "premailer-rails"
gem "sass-rails", "~> 5.0.0", ">= 5.0.6"
gem "uglifier", ">= 2.7.2"
gem 'turbolinks', '~> 5'
gem 'jquery-turbolinks'
gem 'bootstrap-sass'
gem 'bootstrap-datepicker-rails'
gem 'jquery-rails'
gem "font-awesome-rails"

source "https://rails-assets.org" do
  gem "rails-assets-jquery-ujs"
  gem "rails-assets-jquery2"
end

# views
gem "active_link_to"
gem "meta-tags"
gem "simple_form"
gem 'haml-rails'
gem 'erb2haml'

# all other gems
gem 'annotate'
gem "devise"
gem "draper"
gem "kaminari"
gem "puma"
gem "cancancan"
gem 'ransack'

group :development, :test do
  gem "brakeman", require: false
  gem "bullet"
  gem "bundler-audit", require: false
  gem "byebug"
  gem "coffeelint"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "faker"
  gem "pry-rails"
  gem "rubocop", require: false
end

group :development do
  gem "letter_opener"
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen"
  gem "web-console"
end
