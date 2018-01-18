class UsersController < ApplicationController
  # add before_action to authorize specific actions for specific users
  
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      login(@user)
      redirect_to @user
      flash[:success] = "Account created!"
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    @post = Post.find_by(params[:user_id])
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def edit
      @user = User.find_by_id(params[:id])
  end

  def update
    user = User.find_by_id(params[:id])
    user.update_attributes(user_params)
    if user.save
      redirect_to user_path(user)
      flash[:notice] = "Profile updated!"
    else
      flash[:error] = user.errors.full_messages.join(", ")
      redirect_to edit_user_path
    end
  end

  def destroy
    user = User.find_by_id(params[:id])
    user.destroy
    # Handle if user is not destroyed properly (flash notice)
    redirect_to root_path
    flash[:success] = "Account deleted"
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :current_city, :email, :password)
  end

end
