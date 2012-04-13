class AddSubjectIdtoQuizzes < ActiveRecord::Migration
  def up
    add_column :quizzes, :subject_id, :integer
  end

  def down
  end
end
