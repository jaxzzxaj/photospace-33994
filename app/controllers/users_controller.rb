class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]


  def edit
  end

  def update
    current_user.update(user_params)
  end

  def show
    @user = User.find(params[:id])
    @name = @user.name
    @tweets =@user.tweets
  end

  private

  def user_params
    params.require(:user).permit( :email, :name)
  end
end
