class AddIndexToVendors < ActiveRecord::Migration[5.0]
  def change

  	add_index :vendors, :email, unique:true
  	
  end
end
