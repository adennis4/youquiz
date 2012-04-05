class Student < ActiveRecord::Base
  attr_accessible :name
  
  has_many :subjects
  has_many :teachers, :through => :subjects
  has_many :assessments
  has_many :quizzes, :through => :assessments
end
