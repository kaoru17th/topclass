class UsersController < ApplicationController
  
  before_action :signed_in_user #, only: [:edit, :update, :create]
  before_action :correct_user,   only: [:edit, :update]
  
  def show
    if !params[:disable].nil?
      if params[:disable] == "1"
         @user = User.find(params[:id])
         @user.update_attribute(:status, "Inactivo")
         flash[:success] = "Usuario deshabilitado"
      else
         @user = User.find(params[:id])
         @user.update_attribute(:status, "Activo")
         flash[:success] = "Usuario habilitado"
      end
    else
      
      @user = User.find(params[:id])
    end
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)    
    if @user.save
      flash[:success] = "Usuario Creado con Exito"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
      if @user.update_attributes(user_params)
        flash[:success] = "Info updated"
        sign_in @user
        redirect_to @user
      else
        render 'edit'
      end
  end
  
  def index
    @users = User.paginate(page: params[:page])
  end
  
 def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end
  
  private

    def user_params
      params.require(:user).permit(:firstname,:lastname,:code,:identificationtype,:identification,:status,:usertype, :email, :password,
                                   :password_confirmation)
    end
    
        # Before filters

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
