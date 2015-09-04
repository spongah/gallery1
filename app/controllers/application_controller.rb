class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :admin?

  protected

  def admin?
  	if current_user != nil
  		current_user.email = "rocksolid801@gmail.com"
  	end
  end
end
