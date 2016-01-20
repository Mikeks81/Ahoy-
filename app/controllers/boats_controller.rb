class BoatsController < ApplicationController
  def index
  end

  def create
    @user = current_user
    @boat = current_user.boats.build(boat_params)
    if @boat.save
      flash[:notice] = "Boat Created"
      redirect_to @user
    else 
      flash[:notice] = "#{@boat.errors.full_messages.first}"
      render 'users/show'
    end
  end

  def new
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    if @boat.save
      flash[:notice] = "Boat Updated"
      redirect_to current_user
    else
      flash[:notice] = "#{@boat.errors.full_messages.first}"
      render 'show'
    end
  end

  def destroy
  end

  private
    def boat_params
      params.require(:boat).permit(:name, :max_capacity,:current_location, :boat_images)
    end

end
