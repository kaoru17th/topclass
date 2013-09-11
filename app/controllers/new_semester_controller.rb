class NewSemesterController < ApplicationController
	def index
		@program_semester= ProgramSemester.find(:all, :conditions =>"status = 'Activo'");
		#@program_semester=Program_semester.find(params[:id])
	end

	def new
		@program_semester =ProgramSemester.new
	end
end
