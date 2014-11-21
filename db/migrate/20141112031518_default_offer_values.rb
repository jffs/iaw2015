class DefaultOfferValues < ActiveRecord::Migration
  def change
  change_column :offers, :estado, :string, default: "En espera"

  change_column :offers, :precio, :float, default: "0"
  end
end
