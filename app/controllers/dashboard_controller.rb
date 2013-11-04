class DashboardController < ApplicationController
	#Carga de información de todos los charts
	def show
	#Cargo toda la información de los programas y semestres
	@program_semester=ProgramSemester.includes(:program,semester: :subjects,program: :subjects)
  .where("status='Activo'")
  .paginate :page => params[:page], :per_page => 5
     
   #Maestria por alumnos
	 @students_per_program=UserProgram.joins(:program).select("count(*),programs.name").group("programs.name").count
   #Total estudiantes de ultimo año por semestre
   
   #Alumnos por semestre
   @semesters= Semester.all
   @preregister_subjects_hash =PreregisterSubject.joins(:semester, :subject).select("count(*), semesters.name ").group("subjects.name").count 
	end
end

