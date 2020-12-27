class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admins_properties_path
    when User
      users_properties_path
    end
  end

end
