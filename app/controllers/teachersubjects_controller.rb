class TeachersubjectsController < ApplicationController
  def index
    @teachersubjects = TeacherSubject.paginate(page: params[:page])
    @teachersubject = TeacherSubject.new 
  end
  
  def show
    @teachersubject = TeacherSubject.find(params[:id])
    if @teachersubject.status == "true" 
      flash[:success] = "TeacherSubject enable"
    else
      flash[:fail] = "TeacherSubject disabled"
    end
  end  
  
  def new
    @subjects = Subject.all
    @teachers = User.where(usertype: 'Profesor')
    @teachersubject = TeacherSubject.new
  end
  
  def create
    @teachersubject = TeacherSubject.new(teachersubject_params)    
    render teachersubject_params
    if @teachersubject.save  
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
        @teachersubject = TeacherSubject.find_by_id(params[:id])
    if @teachersubject.destroy
      flash[:success] = "teachersubject was destroyed." 
      redirect_to subjects_path
    else
      flash[:fail] = "Fail delete teachersubject"
      render "index"
    end
  end
  
    def teachersubject_params
      params.require(:teacher_subject).permit(:user_id, :subject_id) 
    end
end
