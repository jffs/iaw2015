class AddDefaultOffers < ActiveRecord::Migration
  def change
  change_column :offers, :estado, :string, default: "En espera"
  end
end
