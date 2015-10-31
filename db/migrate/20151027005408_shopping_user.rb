class ShoppingUser < ActiveRecord::Migration
  def change
  	add_column :users, :shopping_cart_id, :integer 
  end
end
