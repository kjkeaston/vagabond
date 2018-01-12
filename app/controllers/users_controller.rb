class UsersController < ApplicationController

  # => not being served currently. Keeping for future use
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user.id) # => goes to user's profile pager AFTER account creation
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  # => private methods
  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :current_city, :email, :password)
  end

end
