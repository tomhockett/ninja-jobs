# Explicitly include SessionsHelper functions in all controllers.
class ApplicationController < ActionController::Base
  include SessionsHelper
end
