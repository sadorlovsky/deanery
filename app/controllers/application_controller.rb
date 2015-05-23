class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to '/'
  end

  protect_from_forgery with: :exception
  before_filter :authenticate_user!

  def after_sign_in_path_for(resource)
    students_path
  end

end
