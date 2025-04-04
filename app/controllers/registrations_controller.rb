class RegistrationsController < ApplicationController
  def new
    #instance variable can be used in views
    @user = User.new
  end  

end  