class Shop < ActiveRecord::Base
  include ShopifyApp::Shop
  include ShopifyApp::SessionStorage

  # t.string   "shopify_domain", null: false
  # t.string   "shopify_token",  null: false
  # t.datetime "created_at"
  # t.datetime "updated_at"

  has_one :vendor

end
