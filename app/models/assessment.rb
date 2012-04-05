class Assessment < ActiveRecord::Base
  attr_accessible :grade_received, :quiz_id, :student_id, :student_responses
  
  belongs_to :quizzes
  belongs_to :students
end
