class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:username,:first_name,:last_name,:image, :image_cache,:description,:website])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:first_name,:last_name,:email, :password])
  
  end
  # allow_browser versions: :modern
end
