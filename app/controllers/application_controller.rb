class ApplicationController < ActionController::Base
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_filter :authenticate_user_from_token!
  before_action :configure_permitted_parameters, if: :devise_controller?



  private

  def authenticate_user_from_token!
    authenticate_with_http_token do |token, options|

      user_email = options[:user_email].presence
      user = user_email && User.find_by_email(user_email)
      if user && Devise.secure_compare(user.authentication_token, token)
        sign_in user, store: true
      end
    end
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:first_name, :last_name]
  end
end
