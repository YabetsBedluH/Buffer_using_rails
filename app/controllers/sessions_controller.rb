class SessionsController < ApplicationController


  def new
    
  end


  def create
    user=User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password]) # the authenticate method is coming from our model  has secure folder
      session[:user_id]=user.id
      redirect_to root_path, notice: "logged in succesfully"
    else
      flash[:alert]="invalid email or password"
      render :new
    end
    

  end




  def destroy
    session[:user_id]=nil
    redirect_to root_path, notice: "logged out"
  end
end