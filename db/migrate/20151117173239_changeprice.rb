class Changeprice < ActiveRecord::Migration
  def change
  	change_column :articles, :precio, 'float USING CAST(precio AS float)'

  end
end
