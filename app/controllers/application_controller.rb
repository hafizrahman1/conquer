class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD
  # before_action :authenticate_user!
=======


  def after_sign_in_path_for(resource_or_scope)
    user_path(current_user)
  end

  def after_sign_out_path_for(resource_or_scope)
   root_path
  end


>>>>>>> 3d759aae8a340a5455db9cad8e9ed93105392fc5
end
