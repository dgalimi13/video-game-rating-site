class SessionsController < ApplicationController 

    def welcome 
    end 

    def new
    end 

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password]) 
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:error] = "Sorry, Login info was incorrect. Please try again"
            redirect_to login_path
        end 
    end 

    def destroy
        session.delete(:user_id)
        redirect_to '/'
    end 

end 