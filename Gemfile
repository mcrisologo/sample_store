source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.3"

gem "rails", "~> 7.0.4"

gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "sprockets-rails"

gem "solidus_core", ">= 0"
gem "solidus_backend", ">= 0"
gem "solidus_api", ">= 0"
gem "solidus_sample", ">= 0"
gem "solidus_support"
gem "solidus_volume_pricing", github: "mcrisologo/solidus_volume_pricing", branch: 'release-1.1.0'
# FIXME: Please remove this line if `solidus_auth_devise` appears anywhere else in the gemfile
#        or replace it with a simple `gem 'solidus_auth_devise'` otherwise.
gem 'solidus_auth_devise' unless File.read(__FILE__).lines[__LINE__..-1].grep(/solidus_auth_devise/).any?
gem "solidus_paypal_commerce_platform", ">= 1.a"

gem "canonical-rails"
gem "truncate_html"
gem "view_component", "~> 2.46"


group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
  gem "apparition", "~> 0.6.0", github: "twalpole/apparition"
  gem "rails-controller-testing", "~> 1.0.5"
  gem "rspec-activemodel-mocks", "~> 1.1.0"
  gem "capybara-screenshot", "~> 1.0"
  gem "database_cleaner", "~> 1.7"
  gem "factory_bot", ">= 4.8"
  gem "factory_bot_rails"
  gem "ffaker", "~> 2.13"
  gem "rubocop", "~> 1.0"
  gem "rubocop-performance", "~> 1.5"
  gem "rubocop-rails", "~> 2.3"
  gem "rubocop-rspec", "~> 2.0"
end
