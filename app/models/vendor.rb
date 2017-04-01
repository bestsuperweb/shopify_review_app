class Vendor < ApplicationRecord
	# t.string :name
 #      t.string :email
 # 		t.string :store_id
 #      t.boolean :superuser
 #      t.string :discount_code
 #      t.boolean :banned
 #      t.boolean :admin
 #      t.string :access_key	

 	belongs_to :vendor
 	has_many :products, {autosave: true, dependent: :destroy}

	#still need to add 'password_digest' to migration
end
