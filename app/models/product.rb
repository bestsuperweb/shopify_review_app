class Product < ApplicationRecord

	# :total_reviews, :int
 #    :product_name, :string
 #    :product_id, :int
# 	  :total_visits, :int
 #    :review_views, :int
 #    :total_sales, :int
 #    :review_to_sales, :int

	belongs_to :vendor 
	has_many :reviews, {dependent: :destroy, autosave: true}

end
