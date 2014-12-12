class AddPago < ActiveRecord::Migration
  def change
  	add_column :articles, :pago,:boolean, default: false
  end
end
