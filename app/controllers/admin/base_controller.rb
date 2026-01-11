class Admin::BaseController < ApplicationController
  layout "admin"       
before_action :require_admin_login

  private

  def current_admin
    @current_admin ||= AdminAuth.find_by(id: session[:admin_id])
  end
  helper_method :current_admin

  def require_admin_login
    unless current_admin
      redirect_to admin_auth_login_path, alert: "Please login first"
    end
  end
end