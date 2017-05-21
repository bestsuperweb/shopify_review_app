# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170510003527) do

  create_table "products", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "total_reviews"
    t.integer  "product_id",      limit: 8
    t.integer  "total_visits"
    t.integer  "review_views"
    t.integer  "total_sales"
    t.integer  "review_to_sales"
    t.string   "product_name"
    t.integer  "shop_id"
    t.index ["product_id"], name: "index_products_on_product_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "rating"
    t.text     "comment"
    t.string   "author_name"
    t.string   "author_email"
    t.text     "vendor_response"
    t.boolean  "response_resolved"
    t.datetime "solicit_review_at"
    t.boolean  "incorporated_into_aggregate"
    t.integer  "product_id"
    t.index ["product_id"], name: "index_reviews_on_product_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string   "shopify_domain",  null: false
    t.string   "shopify_token",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "email"
    t.boolean  "superuser"
    t.string   "discount_code"
    t.boolean  "banned"
    t.boolean  "admin"
    t.string   "access_key"
    t.string   "password_digest"
    t.boolean  "isUpToDate"
    t.index ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "superuser"
    t.string   "discount_code"
    t.boolean  "banned"
    t.boolean  "admin"
    t.string   "access_key"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "store_id"
    t.index ["store_id"], name: "index_vendors_on_store_id"
  end

end
