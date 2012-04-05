class Teacher < ActiveRecord::Base
  attr_accessible :name, :school
  
  has_and_belongs_to_many :students
  has_and_belongs_to_many :quizzes
end
