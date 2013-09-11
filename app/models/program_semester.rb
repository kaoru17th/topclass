class ProgramSemester < ActiveRecord::Base
	belongs_to :program
	belongs_to :semester
	
	  validates :user_id, presence: true
  validates :program_id, presence: true
  validates :status, presence: true
  
end
