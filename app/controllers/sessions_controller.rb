class SessionsController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create, :destroy]

  def new
    # Nothing to do here - go on to new.html.erb
    # (Login page)
  end

  def create
    login = params[:user][:login]
    password = params[:user][:password]
    user = User.find_by login: login
    # if(user && user.authenticate(password))
    if(user && password)
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in successfully"
    else
      redirect_to login_path, alert: "Invalid username/password combination" 
    end
  end

  def destroy
    reset_session    
    redirect_to login_path, notice: "You have been logged out"
  end
end
