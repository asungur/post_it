class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      # NOT SURE
      forwarding_url = session[:forwarding_url]

      log_in(user)
      flash[:success] = "You've successfully logged in"
      redirect_to root_url

    else
      flash.now[:danger] = 'There was something wrong with your username or password'
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    flash[:success] = "You've logged out."
    redirect_to root_url
  end
end


