class AddDetailsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :total_reviews, :int
    add_column :products, :product_name, :string
    add_column :products, :product_id, :int
    add_column :products, :total_visits, :int
    add_column :products, :review_views, :int
    add_column :products, :total_sales, :int
    add_column :products, :review_to_sales, :int
  end
end
