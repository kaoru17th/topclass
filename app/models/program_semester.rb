class ProgramSemester < ActiveRecord::Base
	belongs_to :program
	belongs_to :semester
	
  validates :semester_id, presence: true
  validates :program_id, presence: true
  validates :status, presence: true
  
end
