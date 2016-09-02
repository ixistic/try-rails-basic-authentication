class SiteController < ApplicationController
  before_action :require_login, :except => [:index]

  def index

  end

  def show

  end

  private
  def require_login
    unless current_user.present?
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_path
    end
  end

end
