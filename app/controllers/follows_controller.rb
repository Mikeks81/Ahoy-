class FollowsController < ApplicationController
  def create
  	@user = current_user
  	@follow = @user.follows.build(follow_params)
  	if @follow.save
  		flash[:notice] = "Following boat"
  		redirect_to @user
  	else
  		flash[:notice] = "Unsuccessful Follow"
  		redirect_to @user
  	end
  end

  def destroy
  end

  private
	  def follow_params
	  	params.require(:follow).permit(:user_id, :boat_id)
	  end 
end
