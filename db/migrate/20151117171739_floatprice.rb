class Floatprice < ActiveRecord::Migration
  def change
  	change_column :articles, :precio, :float, :default => 0.0
  end
end
