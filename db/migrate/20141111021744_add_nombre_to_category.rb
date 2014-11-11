class AddNombreToCategory < ActiveRecord::Migration
  def change
  	add_column :categories, :nombre, :string
  end
end
