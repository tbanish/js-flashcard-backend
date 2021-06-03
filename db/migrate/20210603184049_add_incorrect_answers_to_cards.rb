class AddIncorrectAnswersToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :incorrect_answers, :integer
  end
end
