####
# This class is the root ApplicationController for the Admin
# suite. If you're looking to change how things behave on the
# frontend, see app/controllers/application_controller.rb instead.
###
class Admin::AdminApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate_user!
  
  layout "admin/application"
end
