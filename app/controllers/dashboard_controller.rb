class DashboardController < ApplicationController
	#Carga de información de todos los charts
	def show
	#Maestria por alumnos
	@students_per_program=UserProgram.joins(:program).select("count(*),programs.name").group("programs.name").count
	end
end
