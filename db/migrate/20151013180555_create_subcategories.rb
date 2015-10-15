class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
