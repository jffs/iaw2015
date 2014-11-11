class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.text :contenido
      t.float :precio
      t.string :estado

      t.timestamps
    end
  end
end
