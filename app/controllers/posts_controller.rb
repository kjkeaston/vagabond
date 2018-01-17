class PostsController < ApplicationController

  # def index
  #   @user = User.find_by_id(params[:user_id])
  # end

  def show
    @post = Post.find_by_id(params[:id])
    @user = User.find_by_id(params[:user_id])
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def new
    @user = User.find_by_id(session[:user_id])
    @city = City.find_by_id(params[:city_id])
    @post = Post.new
  end

  def create
    @user = User.find_by_id(session[:user_id])
    @city = City.find_by_id(params[:city_id])
    post = Post.create(post_params)
    post.user = @user
    post.city = @city
    if post.save
      redirect_to post_path(post)
      flash[:notice] = "Post added"
    else
      flash[:error] = post.errors.full_messages.join(", ")
      redirect_to new_post_path(params[:city_id])
    end
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def update
    post = Post.find_by_id(params[:id])
    post.update_attributes(post_params)
    if post.save
      redirect_to post_path(post)
      flash[:notice] = "Post updated!"
    else
      flash[:error] = post.errors.full_messages.join(", ")
      redirect_to edit_post_path
    end
  end

  def destroy
    post = Post.find_by_id(params[:id])
    post.destroy
    redirect_to user_path(post.user_id)
    flash[:success] = "Post deleted"
  end


  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end