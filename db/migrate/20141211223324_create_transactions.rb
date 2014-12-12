class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :cant
      t.float :comision
      t.float :cantrec
      t.integer :numcard
      t.references :user, index: true

      t.timestamps
    end
  end
end
