class CreateQuizTeacherJoinTable < ActiveRecord::Migration
  def change
    create_table :quizzes_teachers, :id => false do |t|
      t.integer :teacher_id
      t.integer :quiz_id
    end
  end
end
