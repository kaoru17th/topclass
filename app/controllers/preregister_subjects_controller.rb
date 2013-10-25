class PreregisterSubjectsController < ApplicationController
  def new
    @preregister_subject = PreregisterSubject.new(user_id: params[:user_id])
    @subjects = Program.find_by_id(params[:program_id]).subjects.compact

    @pregistered_subjects = PreregisterSubject.where(user_id: params[:user_id])

    @pregistered_subjects.each do |pregistered_subject|
      @subject = Subject.find_by_id(pregistered_subject.subject_id)
      @subjects.delete(@subject)

    end

    @semesters = Program.find_by_id(params[:program_id]).semesters
    @user_id = params[:user_id]
    @program_id = params[:program_id]
  end
  
  def show
    
    @user = User.find_by_id(params[:user_id])
    @program = Program.find_by_id(params[:program_id])    
    redirect_to user_path(@user, params)
    #redirect_to @user
    
  end

  def create

    @user = User.find_by_id(params[:user_id])
    if(!PreregisterSubject.where(user_id: params[:user_id],subject_id: params[:subject_id]).exists?)
      
      @preregister_subject = PreregisterSubject.new(user_id: params[:user_id], semester_id: params[:semester_id], subject_id: params[:subject_id],status: preregister_subject_params[:status], program_id: params[:program_id])

      if @preregister_subject.save
        @preregister_subject_total = PreregisterSubject.where(semester_id: params[:semester_id],subject_id: params[:subject_id])
        if(@preregister_subject_total.exists?)
          #flash[:success] = @preregister_subject_total.count
          @subject = Subject.find_by_id(params[:subject_id])
          if(@preregister_subject_total.count > @subject.quota)
            #flash[:success] = Program.find_by_id(params[:program_id]).user.firstname
            UserMailer.notification_quota_email(params[:program_id],@preregister_subject).deliver
          end
        end
        flash[:success] = "Materia registrada con Exito"
      else
        flash[:error] = 'Error al guardar el registro'
      end
    else
      flash[:error] = 'La materia ya esta preinscrita'
    end
    redirect_to user_path(@user, params)
  end

  def update

    if !params[:automatic].nil? && params[:automatic] == "1"
      @user = User.find_by_id(params[:user_id])
      @subjects_programs = Program.find_by_id(params[:program_id]).subject_programs
      @semesters = Program.find_by_id(params[:program_id]).semesters
      @subjects_programs_required = @subjects_programs.find_all_by_subjecttype("Obligatoria")
      @subjects_programs_elective = @subjects_programs.find_all_by_subjecttype("Electiva")
      @subjects_programs_elective.shuffle!
      @subjects_programs_optional = @subjects_programs.find_all_by_subjecttype("Opcional")
      @subjects_programs_elective.shuffle!
      #find_by(user_name: user_name, password: password)

      total_normal_semesters = 4
      total_intersemesters = 2
      total_semesters = 6
      subjects_per_semester = 2
      subjects_per_intersemester = 1
      @semesters2 = Program.find_by_id(params[:program_id]).semesters.where("startdate > ?", Time.now)
      #aca primero se traen las materias registradas por semestre y se seleccionan las que menos ocupacion tengan
       #flash[:success] = @subjects_ocupation.count
      #@subjects_ocupation.each do |id,count|
      #        flash[:success] = "#{id}, #{count}"
      #end
        

logger.info "semesters:"+@semesters2.count.to_s
      @semesters2.each do |semester|
        
        if semester.stype = "normal"
          

            @subjects2 = Subject.all :joins => [:subject_programs, :subject_semesters],:conditions => {'subject_semesters.semester_id' => 1,'subject_programs.subjecttype' => "Opcional"}
            
            @subjects_ocupation = Subject.count :joins => [:preregister_subjects],:conditions => {'preregister_subjects.semester_id' => 1,'preregister_subjects.program_id' => 1},:group => "subjects.id"

            @subjects2.each do |subject|
                students = @subjects_ocupation[subject.id]
                logger.info "students:"+students
            #@subjects_programs_optional = @subjects_programs.find_all_by_subjecttype("Opcional")
                      
              suggested_subject = Array.new

            end
        

      
      
      
      
      suggested_subject.push(subject.id)
      
    end
        
        
        
      end
      
      
      
      #:reference_date => 3.months.ago..Time.now
    #flash[:success] = @subjects_ocupation

    #@user = User.find(params[:preregister_subject].user_id)
    #@user.update_attribute(:status, "Activo")
    #flash[:success] = "Usuario habilitado"
    end

    redirect_to @user
  end

  def destroy
    #@user = User.find(preregister_subject_params[:user_id])
    PreregisterSubject.find(params[:id]).destroy
    flash[:success] = "Subject deleted."
    redirect_to :back
  end

  private

  def preregister_subject_params
    params.require(:preregister_subject).permit(:user_id,:status,:semester_id,:subject_id,:program_id)
  #params.require(:user).permit!
  end

end
