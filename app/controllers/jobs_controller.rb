class JobsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def create
  end

  def destroy
  end
end
