class Changep < ActiveRecord::Migration
  def change
  	change_column :articles, :precio, :float
  end
end
