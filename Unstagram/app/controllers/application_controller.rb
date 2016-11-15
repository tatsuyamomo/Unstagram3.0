class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :configure_permitted_parameters, if: :devise_controller?


  
  def after_sign_out_path_for(resource)
  	new_user_session_path
  end
  def after_sign_in_path_for(resource)
  	user_path(current_user.id)
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) << :image
  end 

  protect_from_forgery with: :exception
end
