class DashboardController < ApplicationController
	#Carga de información de todos los charts
	def show
  #Maestria por alumnos
	@students_per_program=UserProgram.joins(:program).select("count(*),programs.name").group("programs.name").count
   #Total estudiantes de ultimo año por semestre
   #Alumnos por semestre
   @semesters= Semester.all
   @preregister_subjects_hash =PreregisterSubject.joins(:semester, :subject).select("count(*), semesters.name ").group("subjects.name").count 
	end
end

