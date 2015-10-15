class DateProduct < ActiveRecord::Migration
  def change
  add_column :articles, :fecha, :datetime
  change_column :articles, :precio, :string, default: "0"
  end
end
