class AddPurchasedAttribute < ActiveRecord::Migration
  def change
  add_column :shopping_carts, :purchased_at, :string
  end
end
