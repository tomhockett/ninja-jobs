# Explicitly include SessionsHelper functions in all controllers.
class ApplicationController < ActionController::Base
  # This lets all of the cool fun methods we wrote in the Sessions Helper to be used in all of our controllers! 🤓
  include SessionsHelper

  private

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
