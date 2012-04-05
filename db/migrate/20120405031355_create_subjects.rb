class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.datetime :start_time
      t.string :subject
      t.integer :student_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
