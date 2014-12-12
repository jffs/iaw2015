class LogicalDeleteCategory < ActiveRecord::Migration
  def change
  	add_column :categories, :eliminado, :boolean
  end
end
