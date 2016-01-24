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
    # @last_job = @boat.jobs.last
    if @job.save
      flash[:notice] = "Job Created."
      redirect_to @user
    else
      flash[:notice] = "Error: Job not saved"
      redirect_to boat_jobs_path
    end
    # if @job.containers > @boat.max_capacity 
    #   flash[:notice] = "Your boat capacity is too small... womp womp."
    #   redirect_to boat_jobs_path(@boat)
    # else
  	 #   @job.save
  	 #   redirect_to @user
    # end
  end

  def new 
  end

  def update
  end

  def destroy
    @user = current_user
    @boat = Boat.find(params[:boat_id])
    @job = Job.find(params[:id])
    @job.destroy
    flash[:notice] = "Job has been deleted."
    redirect_to @user

  end

  private
   def job_params 
   	params.require(:job).permit(:vendor,:cargo, :price,:containers,:origin_location,:destination,:date)
   end

end
