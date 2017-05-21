class AddShopIdToProducts < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :shop_id, :integer
  	remove_column :products, :vendor_id 
  end
end
