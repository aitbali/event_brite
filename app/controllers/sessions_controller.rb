class SessionsController < ApplicationController
  def new
  	
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user && user.authenticated?(params[:session][:password])
      log_in user
      redirect_to user
    else
      
      render 'users/new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
