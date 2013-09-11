class ProgramSemester < ActiveRecord::Base
	belongs_to :programs
	belongs_to :semesters
end
