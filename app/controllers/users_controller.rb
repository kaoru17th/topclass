class UsersController < ApplicationController
  
  #before_action :signed_in_user #, only: [:edit, :update, :create]
  #before_action :correct_user,   only: [:edit, :update]
  
  def show
    if !params[:disable].nil?
      if params[:disable] == "1"
         @user = User.find(params[:id])
         @user.update_attribute(:status, "Inactivo")
         flash[:success] = I18n.t('usuario.deshabilitado') 
      else
         @user = User.find(params[:id])
         @user.update_attribute(:status, "Activo")
         flash[:success] = I18n.t('usuario.habilitado')
      end
    else 
      
      @user = User.find(params[:id])
      @programs = @user.programs.paginate(page: params[:page])
      @subject_records = @user.subject_records.paginate(page: params[:page])
      @preregister_subjects = @user.preregister_subjects.paginate(page: params[:page])
    end
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)    
    if @user.save
      
              # Tell the UserMailer to send a welcome Email after save
        UserMailer.welcome_email(@user).deliver
       
      
          params[:programs].each do |program|
            user_programs = UserProgram.new(program_id: program, user_id: @user.id, status: "Activo")
            if user_programs.valid?
              user_programs.save
            else
              flash.now[:error] = 'Cant save user program'
              #@errors += user_programs.errors
            end 
        end
      
      
      flash[:success] = I18n.t('usuario.crear.exito') 
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])   
    @programs = @user.programs
    @programs_ids=Array.new(@programs.count)
    @programs.each do |program|
      @programs_ids.push(program.id)
    end
  end
  
  def update
      @user = User.find(params[:id])  
      if @user.update_attributes(user_params)
        
            params[:programs].each do |program|
            user_programs = UserProgram.new(program_id: program, user_id: @user.id, status: "Activo")
            if user_programs.valid?
              user_programs.save
            else
              flash.now[:error] = 'Cant save user program'
              #@errors += user_programs.errors
            end 
        end
        flash[:success] = "Info updated"
        sign_in @user
        redirect_to @user
      else
        render 'edit'
      end
  end
  
  def index
    @users = User.paginate(page: params[:page]).per_page(10)
  end
  
 def destroy
    User.find(params[:id]).destroy
    flash[:success] = I18n.t('usuario.eliminado') 
    redirect_to users_url
  end
  
  private

    def user_params
      params.require(:user).permit(:firstname,:lastname,:code,:identificationtype,:identification,:status,:usertype, :email, 
      :password,:password_confirmation)
      #params.require(:user).permit!
    end
    
        # Before filters

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Por favor ingrese."
      end
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    

end
