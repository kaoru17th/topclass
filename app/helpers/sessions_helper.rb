module SessionsHelper
  
  def sign_in(user)
    session[:remember_token] = user.id
    self.current_user = user
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end
  
  def current_user
    userid = session[:remember_token]
    @search = User.find_by_id(userid)
    if !userid.nil? && !@search.nil?
      @current_user ||= User.find(userid)
    end
  end
  
  def current_user?(user)
    user == current_user
  end
  
  def sign_out
    self.current_user = nil
    session.delete(:remember_token)
  end
  
    def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end
end
