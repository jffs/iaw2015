class EliminarColumnasUser < ActiveRecord::Migration
  def change
     remove_column :users,:contrasena 
  	 remove_column :users,:correo
  end
end
