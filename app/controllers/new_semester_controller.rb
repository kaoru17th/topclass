class NewSemesterController < ApplicationController
	def index
		#@program_semester= ProgramSemester.find(:all, :conditions =>"status = 'Activo'");
		#@program_semester=Program_semester.find(params[:id])
		#@subjects_semester=SubjectSemester.includes(:subject).where


		#Cargo toda la información de los programas y semestres
		@program_semester=ProgramSemester.includes(:program, semester: :subjects).where("status='Activo'")

		@pre_subjects=PreregisterSubject.includes(:subject).order(:created_at)

		#Cargar La información de todas las personas que realizaron una preinscripcion
		#program_semester_instance = Subject 
		#ProgramSemester.includes(:program, semester: :subjects).where("status='Activo'").take
		
		#Contador de materias
		@subjects_hash=Hash.new

		#Todas las materias deben tener un total
		@pre_subjects.each do |pre_subject|
		tmp_subject_id = pre_subject.semester_id.to_s + "-" + pre_subject.subject_id.to_s


		if @subjects_hash[tmp_subject_id] ==nil then
			@subjects_hash[tmp_subject_id] = 0
		end
			#validación de reglas 
			#REGLAS

			#Curso lleno! Alarma
			if pre_subject.subject.quota < @subjects_hash[tmp_subject_id] then
				#ALARMA
			else
				@subjects_hash[tmp_subject_id] += 1
			end
		end
	end

	def new
		#LOGICA DE CARGA DE SEMESTRE NUEVO
		@program_semester=ProgramSemester.includes(:program, semester: :subjects).where("status='Activo'")
		render :template => '/new_semester/index'
		#@program_semester =ProgramSemester.new
	end
end
