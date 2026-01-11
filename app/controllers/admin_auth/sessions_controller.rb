class AdminAuth::SessionsController < ApplicationController
  def new
    # login form
  end

  def create
    admin = AdminAuth.find_by(email: params[:email])
    if admin&.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to admin_root_path, notice: "Logged in successfully"
    else
      flash.now[:alert] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to admin_auth_login_path, notice: "Logged out"
  end
end
