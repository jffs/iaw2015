class CreateUseresta < ActiveRecord::Migration
  def change
    create_table :useresta do |t|
      t.string :nombre
      t.string :apellido
      t.string :nick
      t.integer :ventas

      t.timestamps
    end
  end
end
