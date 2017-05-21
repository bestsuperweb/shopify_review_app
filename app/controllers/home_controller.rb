
class HomeController < ShopifyApp::AuthenticatedController

	include DbHelper

  def index

  #Add new shop & products to database if they don't already exist there
  #once new shop is added populate database with shop's current products
  shopifyShop = ShopifyAPI::Shop.current
  localShop = Shop.find_by(shopify_domain: shopifyShop.domain)
  if (!localShop.isUpToDate)
    #updates the local database with the new shop's products
    populateLocalDatabase(localShop)
  end

  #Calls the shopify API therefore 'find all products' only returns this vendor's products
  @shopProducts = localShop.products

  end



end
