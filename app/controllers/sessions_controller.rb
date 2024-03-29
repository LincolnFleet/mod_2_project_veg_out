class SessionsController < ApplicationController
    def new
    end

    def create
        @user=User.find_by(username: params[:user_name])
        
        if @user && @user.authenticate(params[:password])
            session[:user_id]=@user.id
flash[:success]="Successfully logged in."
            redirect_to user_path(@user)
        else
flash[:failure]="Invalid username or password."
            redirect_to '/login'
        end
    end

    def destroy
        session[:user_id]=nil
flash[:success]="Successfully logged out."
        redirect_to '/login'
    end
end
