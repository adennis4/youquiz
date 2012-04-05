class CreateQuizTeacherJoinTable < ActiveRecord::Migration
  def up
    create_table :quizzes_teachers, :id => false do |t|
      t.integer :teacher_id
      t.integer :quiz_id
    end
  end

  def down
  end
end
