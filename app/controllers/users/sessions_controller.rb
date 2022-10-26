# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    @user = User.new
  end

  # POST /resource/sign_in
  
    def create
 
      if @user = User.find_by(email: params[:user][:email])
        if @user.status == "active"
          flash[:notice] = 'User successfully login'
          super
         
          # redirect_to user_path(@user)
        
      else 
          flash[:notice] = 'User could not login'
          redirect_to new_user_session_path
        
        
      end
     end
    end


  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
