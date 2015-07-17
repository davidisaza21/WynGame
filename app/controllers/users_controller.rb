class UsersController < ApplicationController
  before_action :set_user
  def profile

  end
  def set_user
    @current_user = User.find(session[:user_id])
    # p @current_user
  end
  def user_params
    params.require(:user).permit(:email, :is_admin)
  end
end
