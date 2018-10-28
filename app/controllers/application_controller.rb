class ApplicationController < ActionController::Base
  # This lets all of the cool fun methods we wrote in the Sessions Helper to be used in all of our controllers! 🤓
  include SessionsHelper
end
