class AddCorrectAnswersToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :correct_answers, :integer
  end
end
