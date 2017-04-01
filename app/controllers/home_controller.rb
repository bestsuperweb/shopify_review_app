
class HomeController < ShopifyApp::AuthenticatedController

	include DbHelper

  def index

#Add new vendor & products to database if they don't already exist there
#once new vendor is added populate database with vendor's current products
  shopifyVendor = ShopifyAPI::Shop.current

  puts "puts Here"

  unless Vendor.exists?(store_id: shopifyVendor.id)

    #creates a new vendor identifiable by store_id and domain 
  	myVendor = CreateVendor
    populateLocalDatabase(myVendor)
  end

  #Calls the shopify API therefore 'find all products' only returns this vendor's products
  @vendorProducts = ShopifyAPI::Product.find(:all)

end



end
