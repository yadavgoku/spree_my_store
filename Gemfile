source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'spree', '~> 4.1'
gem 'spree_auth_devise', '~> 4.1'
gem 'spree_gateway', '~> 3.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'spree_shared', github: 'spree-contrib/spree_shared', branch: 'master'
gem 'spree_analytics_trackers'
gem 'spree_multi_domain', github: 'spree-contrib/spree-multi-domain', branch: 'rails_6_spree_4'
gem 'spree_one_page_stock_management', github: 'vinsol-spree-contrib/spree_one_page_stock_management', branch: '4_1_stable'
# gem 'spree_abandoned_carts', github: 'freego/spree_abandoned_carts', branch: '4_1_stable'
gem 'searchkick'
gem 'spree_searchkick', github: 'ronzalo/spree_searchkick', branch: '4-0-stable'

  
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
