class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?, :current_user

  private

    def logged_in? 
      !!current_user
    end 

    def current_user 
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def is_owner?
      if current_user.role != "owner" 
        flash[:error] = "You are not an owner"
        redirect_back(fallback_location: root_path)
      end
    end

    def authenticate_user
      redirect_to root_path if !logged_in?
    end

end
