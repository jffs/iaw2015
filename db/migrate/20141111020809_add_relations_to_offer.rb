class AddRelationsToOffer < ActiveRecord::Migration
  def change
  	add_column :offers, :user_id, :integer
  	add_column :offers, :article_id, :integer 
  end
end
