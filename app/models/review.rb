class Review < ApplicationRecord

	# t.datetime "created_at",                  
 #    t.datetime "updated_at",                  
 #    t.integer  "rating"
 #    t.text     "comment"
 #    t.string   "author_name"
 #    t.string   "author_email"
 #    t.text     "vendor_response"
 #    t.boolean  "response_resolved"
 #    t.datetime "solicit_review_at"
 #    t.boolean  "incorporated_into_aggregate"

	belongs_to :product 

end
