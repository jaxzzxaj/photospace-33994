class UsersController < ApplicationController

  def edit
  end

  def update
    current_user.update(user_params)
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit( :email, :name)
  end
end
