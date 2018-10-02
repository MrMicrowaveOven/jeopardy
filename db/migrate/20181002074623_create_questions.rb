class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :value
      t.text :content
      t.integer :round_id
      t.integer :x_coord
      t.integer :y_coord

      t.timestamps
    end
  end
end
