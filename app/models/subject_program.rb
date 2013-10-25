class SubjectProgram < ActiveRecord::Base
  
  belongs_to :subject
  belongs_to :program
  
  validates :subject_id, presence: true
  validates :program_id, presence: true
  validates :status, presence: true
  

end
