class ChangeProductIdInProducts < ActiveRecord::Migration[5.0]
  def change
  		change_column :products, :product_id, :integer, :limit => 8
  end
end
