class Teacher < ActiveRecord::Base
  attr_accessible :name, :school
  
  has_many :subjects
  has_many :students, :through => :subjects
  has_and_belongs_to_many :quizzes
end
