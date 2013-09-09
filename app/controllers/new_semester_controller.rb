class NewSemesterController < ApplicationController
	def index
		#if @program_semester == nil then
			#@program_semester= ProgramSemester.first(20);
			@program_semester= ProgramSemester.all;
		#end

		#@program_semester=Program_semester.find(params[:id])
	end

	def new
		@program_semester =ProgramSemester.new
	end
end
