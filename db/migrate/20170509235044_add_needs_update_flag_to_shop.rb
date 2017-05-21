class AddNeedsUpdateFlagToShop < ActiveRecord::Migration[5.0]
  def change
  	add_column :shops, :needsUpdateFlag, :boolean
  end
end
