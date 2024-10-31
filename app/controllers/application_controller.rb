class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end
end