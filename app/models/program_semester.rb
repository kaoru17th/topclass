class ProgramSemester < ActiveRecord::Base
	belongs_to :program
	belongs_to :semester
end
