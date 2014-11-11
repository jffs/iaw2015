class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :sexo
      t.integer :telefono
      t.string :correo
      t.string :nick
      t.string :contrasena
      t.integer :nivel
      t.string :foto

      t.timestamps
    end
  end
end
