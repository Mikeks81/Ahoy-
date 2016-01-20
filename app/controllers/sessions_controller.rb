class SessionsController < ApplicationController
  def index
  	@user = User.new
  end

  def create
  	@user = User.where(email: params[:email]).first

  	if @user && @user.authenticate(params[:password])
  		session[:user_id] = @user.id
  		flash[:notice] = "Welcome back #{@user.name}."
  		redirect_to @user
  	else
  		flash[:notice] = "#{@user.errors.full_messages.first}"
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
