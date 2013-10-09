class NewSemesterController < ApplicationController
	def index
		#@program_semester= ProgramSemester.find(:all, :conditions =>"status = 'Activo'");
		#@program_semester=Program_semester.find(params[:id])
		#@subjects_semester=SubjectSemester.includes(:subject).where
		if @users_per_subject == nil then
			@users_per_subject= Array.new
		end		

		#Cargo toda la información de los programas y semestres
		@program_semester=ProgramSemester.includes(:program,semester: :subjects,program: :subjects).where("status='Activo'")
		#@subject_program= SubjectProgram.find(:all, :conditions =>"status = 'Activo'")
   
    	#Materias ordenadas por orden de registro
		@pre_subjects=PreregisterSubject.includes(:subject, :semester).order(:created_at)

		#Cargar La información de todas las personas que realizaron una preinscripcion
		#program_semester_instance = Subject 
		#ProgramSemester.includes(:program, semester: :subjects).where("status='Activo'").take
		
		#Contador hash de materias
		@subjects_hash=Hash.new

		#Variable hash para contabilizar las personas que se quedan sin clase 
		@missing_from_subject=Hash.new
		
		#Color
		@missing_from_subject_color=Hash.new

		#Todas las materias deben tener un total
		@pre_subjects.each do |pre_subject|

      tmp_subject_id = pre_subject.semester_id.to_s + "-" + pre_subject.subject_id.to_s
      tmp_subject_id_name = pre_subject.semester.name + "-" + pre_subject.subject_id.to_s + " "+pre_subject.subject.name
  
  
      if @subjects_hash[tmp_subject_id] ==nil then
        @subjects_hash[tmp_subject_id] = 0
      end
        #validación de reglas 
        #REGLAS
  
      #Curso lleno! Alarma
      if pre_subject.subject.quota <= @subjects_hash[tmp_subject_id] then
          #ALARMA
        if @missing_from_subject[tmp_subject_id_name] ==nil then
          @missing_from_subject[tmp_subject_id_name] = 0
        end
        
        @missing_from_subject[tmp_subject_id_name] += 1
        #Color
        @missing_from_subject_color[tmp_subject_id] ="border span5 subjectFull"
      else
        @subjects_hash[tmp_subject_id] += 1
        @missing_from_subject_color[tmp_subject_id] ="border span5"
      end
		end
	end
      
  # TODO: Reglas para reservar a los de ultimo semestre un cupo LLAMAR ON_CLICK AJAX
  #Busqueda de estudiantes de ultimo semestre habilitados para el periodo actual
  #User.includes(:preregister_subjects).order("created_at desc").load.to_a
  #PreregisterSubject.includes(:subject, :semester,:user).order("user.created_at desc")            
  
  def users_in_subject_rule
   idSubject= params[:subjectId]
   #Usuarios registrados por cada materia y ordenados por antiguedad para garantizar los cupos
   #Listos para ser listados!
   @users_per_subject= User.includes(:preregister_subjects).where(preregister_subjects: {subject_id: idSubject}).order("users.created_at desc").to_a
   render "index"
    
  end

	def new
		#LOGICA DE CARGA DE SEMESTRE NUEVO
		@program_semester=ProgramSemester.includes(:program, semester: :subjects).where("status='Activo'")
		render :template => '/new_semester/index'
		#@program_semester =ProgramSemester.new
	end
end
