class AddStoreIdToVendors < ActiveRecord::Migration[5.0]
  def change
    add_column :vendors, :store_id, :string
  end
end
