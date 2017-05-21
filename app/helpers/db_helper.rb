module DbHelper

	def TestDbHelper
		puts 'testing database helper'
	end


	#creates a new vendor in the local database from the current store
	#Stores store_id and domain
	def CreateLocalShop
		shopifyVendor = ShopifyAPI::Shop.current
		#save as new if vendor doesn't currently exist in the database
		
		newShop = Shop.new(shopify_domain: shopifyVendor.domain, name: shopifyVendor.name)
		newShop.save

	end


	#Call this method to populate the local db with test store products 
	def populateLocalDatabase(myShop)

		allShopProducts = ShopifyAPI::Product.find(:all);
		allShopProducts.each do |product|
			myProduct = Product.new(product_id: product.id, product_name: product.title, total_reviews: 0, total_visits: 0)
			myShop.products << myProduct
		end
		myShop.isUpToDate = true;
		myShop.save

	end

	# #Method to update local database of products with the shop's database, i.e. accounts for if the vendor edited their produdct list
	 #ideal situation would be to call this at the beginning of a Session, not very frequently
	 def updateLocalDatabase(currentUserStoreDomain)

		allShopProducts = ShopifyAPI::Product.find(:all)

		localShop = Shop.find_by(shopify_domain: currentUserStoreDomain)
		allLocalProducts = localShop.products

		#for each local product, check if a product exists in the shop's store with the same product id
		allLocalProducts.each do |val|
			#if product exists locally but not in Shopify's db
			if (!allShopProducts.any? { |entry| entry.id == val.product_id })
				#product exists locally but not at shop (product has been removed from the shop's store).
				 val.destroy
			end
		end

		allShopProducts.each do |val|
			#if product exists locally and not at shop
			if (!allLocalProducts.any? {|entry| entry.product_id == val.id })
				#product exists at shop but not locally (new product at shop). add into local database
				localVendor.products << Product.new(product_id: val.id, product_name: val.title, total_reviews: 0, total_visits: 0)
			end
		end
	end



end


























