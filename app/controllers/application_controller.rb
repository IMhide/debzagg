class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def current_user
    super&.decorate
  end

  def sign_up_informations_keys
    %i[tag nickname firstname lastname city country birthdate cover_picture profil_picture]
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: sign_up_informations_keys)
    devise_parameter_sanitizer.permit(:account_update, keys: sign_up_informations_keys)
  end
end
