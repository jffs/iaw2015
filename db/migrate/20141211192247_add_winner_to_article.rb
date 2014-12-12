class AddWinnerToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :winner_id, :integer
  end
end
