class JobsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def index
  end

  def create
  end

  def destroy
  end
end
