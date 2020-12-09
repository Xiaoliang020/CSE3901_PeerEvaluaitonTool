class UsersController < ApplicationController

  def index

  end

  def registration

  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] =user.id
      redirect_to users_index_path
    else
      flash[:register_errors] = user.errors.full_messages
      redirect_to '/users/registration'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
