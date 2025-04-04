class RegistrationsController < ApplicationController
  def new
    #instance variable can be used in views(global when you add @)
    @user = User.new
  end  
  def create
    redirect_to root_path, notice: "Account created successfully!"
  end
  
end   