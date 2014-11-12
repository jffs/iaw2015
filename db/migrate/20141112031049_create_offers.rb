class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.text :contenido
      t.float :precio
      t.string :estado
      t.references :user, index: true
      t.references :article, index: true

      t.timestamps
    end
  end
end
