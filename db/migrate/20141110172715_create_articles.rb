class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :duracion
      t.boolean :estado
      t.string :foto

      t.timestamps
    end
  end
end
