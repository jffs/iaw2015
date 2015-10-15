class Dbact < ActiveRecord::Migration
  def change
  	remove_column :articles,  :fecha ,:estado, :finsub
  	remove_column :articles,  :transaccion

  end
end
