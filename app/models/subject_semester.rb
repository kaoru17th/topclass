class SubjectSemester < ActiveRecord::Base
  belongs_to :subject
  belongs_to :semester
  
  validates :subject_id, presence: true
  validates :semester_id, presence: true
  validates :status, presence: true
  
end
