class Subject < ActiveRecord::Base
  attr_accessible :start_time, :student_id, :subject, :teacher_id
end
