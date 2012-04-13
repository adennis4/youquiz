class Subject < ActiveRecord::Base
  attr_accessible :start_time, :student_id, :subject, :teacher_id
  
  has_and_belongs_to_many :teachers
  has_and_belongs_to_many :students
  has_many :quizzes
end
