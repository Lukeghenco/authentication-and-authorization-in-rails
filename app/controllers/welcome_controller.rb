class WelcomeController < ApplicationController
  
  def home
  end

  def awesome_things 
    redirect_to "https://www.google.com/search?q=awesome+things&source=lnms&tbm=isch&sa=X&ved=0ahUKEwik2f_9g57UAhUB7CYKHdNqCZsQ_AUICigB&biw=614&bih=648&dpr=2"
  end

  def do_super_user_things 
    if current_user.role_before_type_cast >= 3
      redirect_to "http://www.washingtonpost.com"
    else 
      flash[:error] = "You must be a super user to access this!"
      redirect_to root_path 
    end 
  end

  def do_owner_things 
    if current_user.role == "owner"
      redirect_to "http://learn.co"
    else 
      flash[:error] = "You are not an owner!"
      redirect_to root_path 
    end
  end
  
end
