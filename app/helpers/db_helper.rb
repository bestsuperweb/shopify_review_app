module DbHelper

	#creates a new vendor in the local database from the current store
	#Stores store_id and domain
	def CreateLocalVendor
		shopifyVendor = ShopifyAPI::Shop.current
		#save as new if vendor doesn't currently exist in the database
		
		newVendor = Vendor.new(store_id: shopifyVendor.id, name: shopifyVendor.domain)
		newVendor.save

		populateDatabase newVendor 

	end


	#Call this method to populate the local db with test store products 
	def populateLocalDatabase(myVendor)

		allVendorProducts = ShopifyAPI::Product.find(:all);
		allVendorProducts.each do |product|
			myProduct = Product.new(product_id: product.id, product_name: product.title, total_reviews: 0, total_visits: 0)
			myVendor.products << myProduct
		end

		myVendor.save

	end

	# #Method to update local database of products with the vendor's database, i.e. accounts for if the vendor edited their produdct list
	 #ideal situation woudl be to call this at the beginning of a Session, not very frequently
	 def updateLocalDatabase(currentUserStoreID)

		allVendorProducts = ShopifyAPI::Product.find(:all)

		localVendor = Vendor.find_by(store_id: currentUserStoreID)
		allLocalProducts = localVendor.products

		#for each local product, check if a product exists in the vendors store with the same product id
		allLocalProducts.each do |val|
			#if product exists at Vendor and not locally
			if (!allVendorProducts.any? { |entry| entry.id == val.product_id })
				#product exists locally but not at vendor (product has been removed from the vendor's store).
				 val.destroy
			end
		end

		allVendorProducts.each do |val|
			#if product exists locally and not at vendor
			if (!allLocalProducts.any? {|entry| entry.product_id == val.id })
				#product exists at vendor but not locally (new product at vendor). add into local database
				localVendor.products << Product.new(product_id: val.id, product_name: val.title, total_reviews: 0, total_visits: 0)
			end
		end
	end



end


























