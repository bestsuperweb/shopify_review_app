
class HomeController < ShopifyApp::AuthenticatedController

	include DbHelper

  def index

  	#if it's a new vendor (i.e. if there is no current vendor like this in the db)
  		#then load all product names, etc. into the db
  	#Need something in the db to link to shopify's products.	
    #@myProducts = ShopifyAPI::Product.find(:all, params: { limit: 5 })
    #grab all the reviews for each product
  #   @myProducts.each do |prod|
  #   	@myReviews[prod.title] = prod.reviews;
  # end

#Add new vendor & products to database if they don't already exist there
  shopifyVendor = ShopifyAPI::Shop.current 
  
  unless Vendor.exists?(store_id: shopifyVendor.id)
  	myVendor = CreateVendor
  end

  @vendorProducts = ShopifyAPI::Product.find(:all)

end



end
