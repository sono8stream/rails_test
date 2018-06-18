class HomeController < ApplicationController
  before_action :require_login

  protected

  def not_authenticated
    redirect_to welcome_path
  end

  def index
  end
end
