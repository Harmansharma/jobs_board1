# frozen_string_literal: true

class users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
   def new
    
     super 

     @user = User.new
   end

  # POST /resource/sign_in
   def create
    @user = User.new( user_params )
    super do |resource|
      BackgroundWorker.trigger(resource)
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
