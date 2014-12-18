class AddArraysToStatistics < ActiveRecord::Migration
  def change
  	add_column :statistics,:username,:string
  	add_column :statistics,:cant,:string
  end
end
