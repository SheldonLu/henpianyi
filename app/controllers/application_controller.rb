class ApplicationController < ActionController::Base
  protect_from_forgery
  def current_user
    current_admin
  end
  def after_sign_in_path_for(resource)
    shelves_url
  end
end
