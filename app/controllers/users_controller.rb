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
      redirect_to user_path(@user)
    else
      render 'error'
    end
  end

  def show
 @user = User.find(params[:id])

  end

  def error
  	redirect to user_error

  end
end
