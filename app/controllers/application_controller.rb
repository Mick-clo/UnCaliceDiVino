class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_locale

  def set_locale

    locale = params[:locale].to_s.strip.to_sym
  
    I18n.locale = I18n.available_locales.include?(locale) ?
  
        locale :
  
        I18n.default_locale
  
  end

  def default_url_options

    { locale: I18n.locale }

  end

  include Pundit::Authorization

  # Pundit: allow-list approach
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end


  class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: :home

    def home
    end
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end