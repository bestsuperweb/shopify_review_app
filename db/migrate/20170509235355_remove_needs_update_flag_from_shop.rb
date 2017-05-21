class RemoveNeedsUpdateFlagFromShop < ActiveRecord::Migration[5.0]
  def change
  	rename_column :shops, :needsUpdateFlag, :isUpToDate
  end
end
