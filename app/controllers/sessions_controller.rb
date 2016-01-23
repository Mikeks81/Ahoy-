class SessionsController < ApplicationController
  def index
    if current_user
      redirect_to user_path(current_user)
    else
  	@user = User.new
    end
  end

  def create
  	@user = User.where(email: params[:email]).first

  	if @user && @user.authenticate(params[:password])
  		session[:user_id] = @user.id
  		flash[:notice] = "Welcome back #{@user.name}."
  		redirect_to @user
  	else
  		flash[:notice] = "Incorrect Email or Password."
  		render 'sessions/index'
  	end
  end

  def new
  end

  def destroy
  	@user = current_user
  	if current_user
  		session.clear
  		flash[:notice] = "And don't let the door hit you!!"
  		redirect_to root_path
  	end
  end
  
end
