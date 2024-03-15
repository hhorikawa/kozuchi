
source 'https://rubygems.org'

ruby '>= 3.1.1'

gem 'rails', '~> 6.1.7'

# PostgreSQL
gem 'pg', '~> 1.5'

# v2.1 = rails 6.1. v2.0 = rails 5.2
gem 'activerecord-session_store', '~> 2.1'

gem 'bootstrap-sass'
gem 'dynamic_form'
gem 'haml-rails'
gem 'httpclient'

# Distributes the V8 JavaScript engine in binary and source forms in order to support fast builds of The Ruby Racer
# <i>therubyracer</i> は非常に古いヴァージョンに依存。
#gem 'libv8'

#gem 'passenger'

# 最新が 2019年. 
# sassc-rails は非推奨. 依存する sassc gem -> libsass is deprecated.
#   -> cssbundling-rails or webpack が移行先
gem 'sassc-rails'

gem 'rails-controller-testing'

# 最新が 2017 年
gem 'rails-observers'

#gem 'rake'

gem 'rails_autolink'
gem 'rb-readline'

# 2017年で終了。Rails からも切り離された. 依存する <i>libv8</i> も非常に古い (2012年〜2013年ごろの v8).
#   -> mini_racer もダメ.
#   -> 必要なら、移行先は execjs
#gem 'therubyracer'

# webpack v4.46.0 は OpenSSL v3 環境で動かない. 素の webpack v5 以降を使え.
#gem 'webpacker'
gem "jsbundling-rails"

group :assets do
  # Uglifier minifies JavaScript files by wrapping UglifyJS to be accessible in Ruby
  #gem 'uglifier'
end

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem "capybara"
  #gem 'capybara-screenshot'
  gem 'database_cleaner'
  gem "factory_bot_rails"
  gem 'i18n_generators'
  gem 'listen'
  gem 'phantomjs', :require => 'phantomjs/poltergeist'
  gem 'poltergeist'
  #gem 'puma'
  gem "pry-rails"
  gem "rspec-rails"
  gem 'timecop'
end

group :production do
  gem 'sendgrid-ruby'
end
