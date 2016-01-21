class JobsController < ApplicationController
  def index
  	@job = Job.new
  	@boat = Boat.find(params[:boat_id])
  	@user = current_user
  end

  def create
  	@user = current_user
  	@boat = Boat.find(params[:boat_id])
  	@job = @boat.jobs.build(job_params)
    
  	@job.save
  	redirect_to @user
  end

  def new 
  end

  def update
  end

  def destroy
  end

  private
   def job_params 
   	params.require(:job).permit(:vendor,:cargo,:container,:origin_location,:destination,:date)
   end

end
