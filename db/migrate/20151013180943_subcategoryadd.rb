class Subcategoryadd < ActiveRecord::Migration
  def change
  add_column :articles, :subcategory_id, :integer
  end
end
