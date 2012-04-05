class Quiz < ActiveRecord::Base
  attr_accessible :correct_responses, :description, :grade_level, :questions, :title
  
  validates :title,             :presence => true
  validates :description,       :presence => true
  validates :grade_level,       :presence => true
  validates :questions,         :presence => true
  validates :correct_responses, :presence => true
  
    has_and_belongs_to_many :teachers
    has_many :assessments
    has_many :students, :through => :assessments
end
