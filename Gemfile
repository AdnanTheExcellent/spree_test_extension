source 'http://rubygems.org'

# Provides basic authentication functionality for testing parts of your engine
gem 'spree', '1.2.4'
gem 'spree_auth_devise', :github => 'spree/spree_auth_devise', :branch => '1-2-stable'

gem 'active_shipping', :git => "git://github.com/Shopify/active_shipping"
gem 'spree_active_shipping', :git => "git://github.com/spree/spree_active_shipping", :branch => "1-3-stable"
gem 'spree_address_book', :git => "git://github.com/romul/spree_address_book.git", :branch => "1-2-stable" # make sure to include after spree
gem 'spree_gateway', :git => 'git://github.com/spree/spree_gateway.git', :branch => "1-2-stable" # make sure to include after spree
gem 'spree_print_invoice', :git => 'git://github.com/spree/spree_print_invoice.git', :ref => '2e52c3b79c3ae0e5fb5f502d0ec3dad46c82ad42'

#include mgx extensions
gem "mgxcopy_binary_assets", :path => "../mgxcopy_binary_assets"

# Include MGX dependencies
gem 'business_time', '0.6.1'
gem 'aws-s3', '0.6.2'
gem 's3_swf_upload'
gem 'amqp', '0.9.4'
gem 'prawn', '0.8.4'
gem 'area', :git => "git://github.com/AdnanTheExcellent/area.git"
gem 'headjs-rails'
gem 'devise'
gem 'devise-encryptable'

# development gems
group :development do
  gem 'debugger'
  gem 'thin'
  gem 'axlsx'
  gem 'meta_request'
end

group :development, :test do

  gem 'activemodel'

  gem 'guard'
  gem 'guard-rspec', '~> 0.5.0'
  gem 'rspec-rails', '2.12.0'
  gem 'factory_girl_rails', '~> 1.7.0'
  gem 'email_spec', '~> 1.2.1'
  gem 'ffaker'
  gem 'shoulda-matchers', '~> 1.0.0'
  gem 'capybara', '1.1.3'
  gem 'selenium-webdriver', '2.32.0'
  gem 'database_cleaner', '0.7.1'
  gem 'launchy'
  # gem 'debugger'

end

gemspec
