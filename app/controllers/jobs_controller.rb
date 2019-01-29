class JobsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = current_user.jobs.build(job_params)
    if @job.save
      flash[:success] = "Your job has been posted!"
      redirect_to @job
    else
      render 'new'
    end
  end

  def destroy
    Job.find(params[:id]).destroy
    flash[:success] = "Job has been deleted"
    redirect_to jobs_url
  end

  private

  def job_params
    params.require(:job).permit(:title, :description)
  end
end
