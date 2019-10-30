class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
  end

  private

  def user_params
    prams.require(:user).permit(:name, :age)
  end
  


end
