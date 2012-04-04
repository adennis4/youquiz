class Quiz < ActiveRecord::Base
  attr_accessible :correct_responses, :description, :grade_level, :questions, :title
  
  validates :title,             :presence => true
  validates :description,       :presence => true
  validates :grade_level,       :presence => true
  validates :questions,         :presence => true
  validates :correct_responses, :presence => true
  
end
