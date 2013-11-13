class DashboardController < ApplicationController
  #Carga de información de todos los charts
  def show
    #Cargo toda la información de los programas y semestres
    @program_semester=ProgramSemester.includes(:program,semester: :subjects,program: :subjects)
    .where("status='Activo'")
    .paginate :page => params[:page], :per_page => 5
    
    #Maestria por alumnos
    @students_per_program=UserProgram.joins(:program).select("count(*),programs.name").group("programs.name").count

    #Total alumnos por semestre
    @total_alumnos= User.all.count

    #Total Preinscripciones
    @total_preinscripciones= PreregisterSubject.all.count
    
    #inicialización para evitar error
    @missing_from_subject=Hash.new

    
    @total_alumnos_por_semestre= Array.new

    #Total alumnos por semestre
    Semester.order(:startdate).all.each do |tmp_semester|
      @total_alumnos_por_semestre.push(User.where("status='Activo' and code LIKE '"+tmp_semester.name[0..3]+tmp_semester.name[6]+"%' ").count) 
    end

  end
  
  def load_charts
    
    show 
    #Total estudiantes de ultimo año por semestre
   
    #Alumnos por semestre
    @semesters= Semester.where("id="+ params[:semesterId])
    @preregister_subjects_hash =PreregisterSubject
    .joins(:semester, :subject)
    .select("count(*), semesters.name ")
    .where("semester_id = "+params[:semesterId])
    .group("subjects.name").count
    
    render :show 
    
  end
  
  #Notificaciones
  def notifications
    show
    
    #Materias ordenadas por orden de registro
    @pre_subjects=PreregisterSubject.includes(:subject, :semester)
    .where("semester_id="+params[:semesterId])
    .order(:created_at)
		
    #Contador hash de materias
    @subjects_hash=Hash.new
    #Variable hash para contabilizar las personas que se quedan sin clase 
    @missing_from_subject=Hash.new

    #Todas las materias deben tener un total
    @pre_subjects.each do |pre_subject|

      tmp_subject_id = pre_subject.semester_id.to_s + "-" + pre_subject.subject_id.to_s
      
      if pre_subject.semester ==nil then
        tmp_sem_name = "Sin nombre semestre"
      else
        tmp_sem_name =pre_subject.semester.name
      end
      if pre_subject.subject ==nil then
        tmp_sub_name = "Sin nombre materia"
      else
        tmp_sub_name =pre_subject.subject.name
      end
      
      tmp_subject_id_name = tmp_sem_name + "-" + pre_subject.subject_id.to_s + " "+tmp_sub_name
  
  
      if @subjects_hash[tmp_subject_id] ==nil then
        @subjects_hash[tmp_subject_id] = 0
      end
      #validación de reglas 
      #REGLAS
  
      #Curso lleno! Alarma
      if pre_subject.subject ==nil then
        tmp_quota = 0
      else
        tmp_quota =pre_subject.subject.quota
      end
      
      if tmp_quota <= @subjects_hash[tmp_subject_id] then
        #ALARMA
        if @missing_from_subject[tmp_subject_id_name] ==nil then
          @missing_from_subject[tmp_subject_id_name] = 0
        end       
        @missing_from_subject[tmp_subject_id_name] += 1
      else
        @subjects_hash[tmp_subject_id] += 1
      end
    end
    
      render :show
  end
  
end

