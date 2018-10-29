class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      if user.activated?
        # This method is in sessions_helper.rb
        log_in user
        redirect_back_or user
      else
        message = "Account not activated. "
        message += "Check your email for the activation link."
        flash[:warning] = message
        redirect_to root_url
      end
    else
      # contents of flash.now disappear upon an additional request
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    # This method is also in sessions_helper.rb
    log_out
    redirect_to root_url
  end
end
