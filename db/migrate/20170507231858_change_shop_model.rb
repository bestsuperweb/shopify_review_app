class ChangeShopModel < ActiveRecord::Migration[5.0]
    # t.string   "name"
    # t.string   "email"
    # t.boolean  "superuser"
    # t.string   "discount_code"
    # t.boolean  "banned"
    # t.boolean  "admin"
    # t.string   "access_key"
    # t.datetime "created_at",      null: false
    # t.datetime "updated_at",      null: false
    # t.string   "password_digest"
    # t.string   "store_id"
    # t.index ["store_id"], name: "index_vendors_on_store_id"


  def change
  	add_column :shops, :name, :string
  	add_column :shops, :email, :string
  	add_column :shops, :superuser, :boolean
  	add_column :shops, :discount_code, :string
  	add_column :shops, :banned, :boolean
  	add_column :shops, :admin, :boolean
  	add_column :shops, :access_key, :string
  	add_column :shops, :password_digest, :string
  end
end
