ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

#simulates a session
  def login_shop(shop)
  	@request.session[:shopify] = shop.id 
  	@request.session[:shopify_domain] = shop.shopify_domain
  end

  # Add more helper methods to be used by all tests here...
end
