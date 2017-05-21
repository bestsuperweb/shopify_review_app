class Shop < ActiveRecord::Base
  include ShopifyApp::Shop #includes Session accessor & shop validation
  include ShopifyApp::SessionStorage #store and retrieve Sessions

  # t.string   "shopify_domain", null: false
  # t.string   "shopify_token",  null: false
  # t.datetime "created_at"
  # t.datetime "updated_at"

 has_many :products, {autosave: true, dependent: :destroy}


end
