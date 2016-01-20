class UsersController < ApplicationController
  def index
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thanks for loggin in, Ahoy!"
      redirect_to @user
    else
      flash[:notice] = "#{@user.errors.full_messages.first}"
      render 'sessions/index'
    end
  end

  def new
  end

  def show
    @user = User.find(params[:id])
    @boats = @user.boats
    @boat = Boat.new
    # @job = Job.new
  end

  def update
    @user = current_user
    @user.update(user_params)
    flash[:notice] = "Account Updated"
    redirect_to @user
  end

  def destroy
    @user = current_user
    @user.delete
    session.clear
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:name,:email,:company,:password,:password_confirmation)
    end
end
