class SubjectsController < ApplicationController
  def index
    @subjects = Subject.paginate(page: params[:page])
  end
  
  def show
    @subject = Subject.find(params[:id])
    if @subject.status == "true" 
      flash[:success] = "Subject enable"
    else
      flash[:fail] = "Subject disabled"
    end
  end
  
  def new
    @subject = Subject.new
  end
  
  def create
    @subject = Subject.new(subject_params)    
    if @subject.save  
      flash[:success] = "Subject created sucesfull"
      redirect_to subjects_path
    else
      flash[:fail] = "Fail Subject creation"
      render "new"
    end
  end
  
  def edit
     @subject = Subject.find(params[:id])
  end
  
  def update
    @subject = Subject.find_by_id(params[:id])
    if @subject.update_attributes(params[:subject])
      flash[:success] = "Subject was updated"
        redirect_to subjects_path
      else
        render "edit"
      end
  end
  
  def destroy
    @subject = Subject.find_by_id(params[:id])
    if @subject.destroy
      flash[:success] = "Subject was destroyed."
      redirect_to subjects_path
    else
      flash[:fail] = "Fail delete Subject"
      render "index"
    end
  end
  
    private

  def subject_params
      params.require(:subject).permit(:code,:name,:quota,:credits,:status) 
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
