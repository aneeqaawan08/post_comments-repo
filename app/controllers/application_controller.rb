class ApplicationController < ActionController::Base

  
    # before_action :configure_permitted_parameters, if: :devise_controller?
  #    before_action :authenticate_user!
  
    protected
   
    # def configure_permitted_parameters
    #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone_no, :image, :role, :status])
    #   devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone_no, :image, :role, :status])
    # end

     helper_method :current_user
    
end
