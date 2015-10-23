class CreateCartItems < ActiveRecord::Migration
  def change
  	drop_table :shopping_cart_items
    create_table :shopping_cart_items do |t|
      t.shopping_cart_item_fields
      t.timestamps
    end
  end
end
