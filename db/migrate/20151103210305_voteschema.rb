class Voteschema < ActiveRecord::Migration
  def change
  	add_column :votes, :item_id, :integer
  	add_column :votes, :user_id, :integer 
  	add_column :votes, :vote, :boolean 
  end
end
