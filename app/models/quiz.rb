class Quiz < ActiveRecord::Base
  attr_accessible :correct_responses, :description, :grade_level, :questions, :title, :correct_response, :video_url, :subject_id
  
  validates :title,             :presence => true
  validates :description,       :presence => true
  validates :grade_level,       :presence => true
  validates :questions,         :presence => true
  validates :correct_responses, :presence => true
  
    has_and_belongs_to_many :teachers
    has_many :assessments
    has_many :students, :through => :assessments
    belongs_to :subject
end
