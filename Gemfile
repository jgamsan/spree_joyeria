source 'https://rubygems.org'

gem 'rails', '3.2.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'turbo-sprockets-rails3'
  gem 'bootstrap-sass'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'rails-i18n'
gem 'devise-i18n'
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'
group :production do
  gem 'unicorn'
  gem 'foreman'
  gem 'therubyracer', '0.10.2' #only required for 0.70.x or later
end
group :development do
  gem 'capistrano'
  gem 'capistrano-unicorn', :require => false
  gem 'rvm-capistrano'
  gem 'irbtools'
  gem 'bullet'
  gem 'letter_opener'
  gem 'puma'
end
# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
gem 'spree', '1.2.2'
gem 'spree_usa_epay'
gem 'spree_skrill'
gem 'spree_auth_devise', :github => 'spree/spree_auth_devise', :branch => '1-2-stable'
gem 'spree_addings_for_joyeria', :git => 'git://github.com/jgamsan/spree_addings_for_joyeria.git'
