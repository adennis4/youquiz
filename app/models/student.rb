class Student < ActiveRecord::Base
  attr_accessible :name
  
  has_and_belongs_to_many :teachers
  has_many :assessments
  has_many :quizzes, :through => :assessments
end
