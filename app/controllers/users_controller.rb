class UsersController < ApplicationController
  def home
  	@user = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create(name: params['name'])
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to user_path(@user)
    else
      render 'home'
    end
  end

  def show
 @user = User.find(params[:id])
  end
end
