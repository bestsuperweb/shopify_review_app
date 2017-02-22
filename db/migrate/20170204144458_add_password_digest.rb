class AddPasswordDigest < ActiveRecord::Migration[5.0]
  def change
  	add_column :vendors, :password_digest, :string
  end
end
