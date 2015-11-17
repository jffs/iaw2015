class ChangeAllprices < ActiveRecord::Migration
  def change
  remove_column :articles, :precio
  add_column :articles, :precio, :float
  end
end
