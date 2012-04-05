class CreateStudentTeacherJoinTable < ActiveRecord::Migration
  def up
    create_table :students_teachers, :id => false do |t|
      t.integer :student_id
      t.integer :teacher_id
    end
  end

  def down
  end
end
