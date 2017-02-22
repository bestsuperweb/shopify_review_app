class AddVendorIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :vendor_id, :integer
  end
end
