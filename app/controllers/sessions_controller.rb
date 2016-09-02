class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.authenticate(params[:email], params[:password])
    respond_to do |format|
      if user
        session[:user_id] = user.id
        format.html { redirect_to show_path }
      else
        flash.now.alert = "Invalid email or password"
        format.html { render :new }
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
