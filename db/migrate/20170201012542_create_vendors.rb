class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :email
      t.boolean :superuser
      t.string :discount_code
      t.boolean :banned
      t.boolean :admin
      t.string :access_key

      t.timestamps
    end
  end
end
