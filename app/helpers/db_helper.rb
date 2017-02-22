module DbHelper

	#creates a new vendor in the local database
	def CreateLocalVendor
		shopifyVendor = ShopifyAPI::Shop.current
		#save as new if vendor doesn't currently exist in the database
		
		newVendor = Vendor.new(store_id: shopifyVendor.id, name: shopifyVendor.domain)
		newVendor.save

		populateDatabase newVendor 


		

	end


	#Call this method to populate the local db with test store products 
	def populateDatabase(myVendor)

		allVendorProducts = ShopifyAPI::Product.find(:all);
		allVendorProducts.each do |product|
			myProduct = Product.new(product_id: product.id, product_name: product.title, total_reviews: 0, total_visits: 0)
			myVendor.products << myProduct
		end

		myVendor.save

	end


end
