class ActualizarDb < ActiveRecord::Migration
  def change
	drop_table :transactions
	drop_table :statistics
	drop_table :offers
	drop_table :answers
	remove_column :users, :sexo,:telefono,:foto
	remove_column :users, :nivel
	rename_column :users, :nick, :username
	remove_column :articles, :duracion, :estado
	remove_column :articles,  :winner_id,:transaccion
	add_column :articles, :ubicacion, :string
  	add_column :articles, :precio, :float, default: "0"
  end
end
