class AddClassToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :class, :string
  end
end
