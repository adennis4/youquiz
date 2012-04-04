class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :description
      t.integer :grade_level
      t.text :questions
      t.text :correct_responses

      t.timestamps
    end
  end
end
