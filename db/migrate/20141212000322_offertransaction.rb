class Offertransaction < ActiveRecord::Migration
  def change
  	add_column :transactions, :offer_id, :integer
  	remove_column :articles, :pago
  end
end
