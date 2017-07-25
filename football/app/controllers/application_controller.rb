class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
before_action :authenticate_user!, :except => [:search]

     def authenticate_user
    redirect_to new_user_registration_url unless user_signed_in?
  end
end
