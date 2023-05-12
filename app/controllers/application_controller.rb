class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    new_profile_path # <- Path you want to redirect the user to after signup
  end
end 