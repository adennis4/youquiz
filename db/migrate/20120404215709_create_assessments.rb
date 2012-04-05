class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.string :grade_received
      t.string :student_responses
      t.integer :quiz_id
      t.integer :student_id

      t.timestamps
    end
  end
end
