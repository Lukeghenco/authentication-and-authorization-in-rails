class SessionsController < ApplicationController 

    def new 
        @user = User.new
    end 

    def create 
        @user = User.where("lower(username) = ?", params[:user][:username].downcase).first
        binding.pry
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id 
            flash[:notification] = "Successfully logged in!"
            redirect_to root_path
        else 
            flash[:error] = "Unable to log in"
            render :new 
        end
    end

    def destroy
        session.clear 
        flash[:notification] = "Successfully logged out!"
        redirect_to root_path
    end
end