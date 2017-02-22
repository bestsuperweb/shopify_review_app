class AddDetailsToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :rating, :integer
    add_column :reviews, :comment, :text
    add_column :reviews, :author_name, :string
    add_column :reviews, :author_email, :string
    add_column :reviews, :vendor_response, :text
    add_column :reviews, :response_resolved, :boolean
    add_column :reviews, :solicit_review_at, :datetime
    add_column :reviews, :incorporated_into_aggregate, :boolean
  end
end
