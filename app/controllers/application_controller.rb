class ApplicationController < ActionController::Base

  before_action :set_paper_trail_whodunnit
  

  protect_from_forgery with: :null_session
  
  #  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    # redirect_to :back, alert: exception.message
    redirect_to main_app.root_path, :alert => exception.message
  end
  
end
