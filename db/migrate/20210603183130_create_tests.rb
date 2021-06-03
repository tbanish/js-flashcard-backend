class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.integer :duration
      t.float :score
      t.string :correct_ids
      t.string :incorrect_ids
      t.integer :deck_id
      
      t.timestamps
    end
  end
end
