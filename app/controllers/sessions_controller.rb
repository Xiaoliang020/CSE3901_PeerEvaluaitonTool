class SessionsController < ApplicationController

  def create
    user = User.find_by(email:login_params[:email])
    if user && user.authenticate(login_params[:password])
      log_in user
      redirect_to home_page_home_path
    else
      flash[:login_errors] = ['Invalid email or password']
      # redirect_to '/'
    end
  end

  private
  def login_params
    params.require(:login).permit(:email,:password)
  end

end
