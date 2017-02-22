class RemoveProductNameFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :product_name, :string
  end
end
