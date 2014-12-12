class AddFieldsToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :finsub, :boolean
  end
end
