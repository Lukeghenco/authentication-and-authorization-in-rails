class UsersController < ApplicationController 
  before_action :authenticate_user
  before_action :is_owner?, only: [:index, :change_account_role]

  def index 
      @users = User.all
  end

  def change_account_role
    @user = User.find_by(id: params[:id])
    if @user && @user.update(role: params[:role].to_i)
      flash[:notification] = "#{@user.username} is now a #{@user.role}!"
    else 
      flash[:notification] = "There was an issue with this request!"
    end
    redirect_to users_path
  end

  def show 
  end 

  def destroy 
  end
  
end