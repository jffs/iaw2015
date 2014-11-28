class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :contenido
      t.integer :comment_id

      t.timestamps
    end
  end
end
