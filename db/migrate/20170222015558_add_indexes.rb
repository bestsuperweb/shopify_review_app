class AddIndexes < ActiveRecord::Migration[5.0]
  def change

  	add_index :products, :product_id
  	add_index :reviews, :product_id
  	add_index :vendors, :store_id
  	remove_index :vendors, :column => :email 

  end
end
