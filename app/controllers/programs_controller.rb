class ProgramsController < ApplicationController

  def index
    @programs = Program.paginate(page: params[:page])
  end
  
  def showSubjectList
    @subjects = Program.find_by_sql("select p.id idProgram, s.id idSubject, s.code codeSubject, s.name subjectName, s.quota subjectQuota, count(ps.subject_id) preregisterCount, ((count(ps.subject_id)*100/s.quota) || '%') percentaje  from programs p, subject_programs sp, subjects s, preregister_subjects ps where p.id = sp.program_id and sp.subject_id = s.id and s.id = ps.subject_id group by ps.subject_id;")
  end
  
  def show
    @program = Program.find(params[:id])
    if @program.status == "true" 
      flash[:success] = "Program enable"
    else
      flash[:fail] = "Program disabled"
    end
  end
  
  def new
    @program = Program.new
  end
  
  def create
    @program = Program.new(program_params)    
    if @program.save  
      flash[:success] = "Program created sucesfull"
      redirect_to programs_path
    else
      flash[:fail] = "Fail Program creation"
      render "new"
    end
  end
  
  def edit
     @program = Program.find(params[:id])
  end
  
  def update
    @program = Program.find_by_id(params[:id])
    if @program.update_attributes(params[:program])
      flash[:success] = "Program was updated"
        redirect_to programs_path
      else
        render "edit"
      end
  end
  
  def destroy
    @program = Program.find_by_id(params[:id])
    if @program.destroy
      flash[:success] = "Program was destroyed."
      redirect_to programs_path
    else
      flash[:fail] = "Fail delete Program"
      render "index"
    end
  end
  
    private

  def program_params
    params.require(:program).permit(:code,:name,:objetive,:status) 
    end
  
    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end

