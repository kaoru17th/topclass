class TeacherSubjectsController < ApplicationController
  def index
    @teacher_subjects = TeacherSubject.paginate(page: params[:page])
    @teacher_subject = TeacherSubject.new 
  end
  
  def show
    @teacher_subject = TeacherSubject.find(params[:id])
    if @teacher_subject.status == "true" 
      flash[:success] = "TeacherSubject enable"
    else
      flash[:fail] = "TeacherSubject disabled"
    end
  end  
  
  def new
<<<<<<< HEAD:app/controllers/teachersubjects_controller.rb
    @subjects = Subject.all
    @teachers = User.where(usertype: 'Profesor')
    @teachersubject = TeacherSubject.new
=======
    @teacher_subject = TeacherSubject.new
>>>>>>> cbe770c6dc510dd468bb3e26fcca7b7ad92b5d77:app/controllers/teacher_subjects_controller.rb
  end
  
  def create
    @teacher_subject = TeacherSubject.new(teacher_subject_params)    
    if @teacher_subject.save  

      flash[:success] = "Subject created sucesfull"
      redirect_to teachersubjects_path
    else
      flash[:fail] = "Fail Subject creation"
      render "new"
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
        @teacher_subject = TeacherSubject.find_by_id(params[:id])
    if @teacher_subject.destroy
      flash[:success] = "teachersubject was destroyed." 
      redirect_to subjects_path
    else
      flash[:fail] = "Fail delete teachersubject"
      render "index"
    end
  end
  
    def teacher_subject_params
      params.require(:teacher_subject).permit(:user_id, :subject_id) 
    end
end
