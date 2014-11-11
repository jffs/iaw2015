class AddRelationsToComent < ActiveRecord::Migration
  def change
  	add_column :coments, :user_id, :integer
  	add_column :coments, :article_id, :integer
  end
end
