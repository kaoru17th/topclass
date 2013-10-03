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
  
  def create
    

    @user = User.find_by_id(params[:user_id])
    if(!PreregisterSubject.where(user_id: params[:user_id],subject_id: params[:subject_id]).exists?)
      @preregister_subject = PreregisterSubject.new(user_id: params[:user_id], semester_id: params[:semester_id], subject_id: params[:subject_id],status: preregister_subject_params[:status])  
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
      end
    else
       flash[:error] = 'La materia ya esta preinscrita'
    end
    redirect_to @user
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

         
         if(!@subjects_programs_required.nil?)
           if(!@subjects_programs_elective.nil?)
              if(!@@subjects_programs_optional.nil?)
                 k = -1
                 j = -1
                 for i in 0..5

                  if i != 1 && i!=4        
                    @preregister_subject1= PreregisterSubject.new(user_id: @user.id, semester_id: @semesters[i].id, subject_id: @subjects_programs_optional[k+=1].subject_id,status: "Activa")
                    if i==5
                      @preregister_subject2= PreregisterSubject.new(user_id: @user.id, semester_id: @semesters[i].id, subject_id: @subjects_programs_required[0].subject_id,status: "Activa")
                    else
                      @preregister_subject2= PreregisterSubject.new(user_id: @user.id, semester_id: @semesters[i].id, subject_id: @subjects_programs_optional[k+=1].subject_id,status: "Activa")
                    end
                    @preregister_subject1.save
                    @preregister_subject2.save
                  else 
                    @preregister_subject3= PreregisterSubject.new(user_id: @user.id, semester_id: @semesters[i].id, subject_id: @subjects_programs_elective[j+=1].subject_id,status: "Activa")
                    @preregister_subject3.save
                  end
                 end
                   
                  flash[:success] = "Pensum Registrado con Exito"

            else
              flash.now[:error] = 'Program error optional subjects doesnt exists'
            end
          else
            flash.now[:error] = 'Program error elective subjects doesnt exists'
          end
         else
           flash.now[:error] = 'Program error required subject doesnt exists'
         end
      else
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
      params.require(:preregister_subject).permit(:user_id,:status,:semester_id,:subject_id)
      #params.require(:user).permit!
   end
  
end
