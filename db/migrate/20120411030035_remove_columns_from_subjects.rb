class RemoveColumnsFromSubjects < ActiveRecord::Migration
  def up
    remove_column :subjects, :student_id
    remove_column :subjects, :teacher_id
  end

  def down
  end
end
