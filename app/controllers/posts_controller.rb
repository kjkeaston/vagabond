class PostsController < ApplicationController

  # def index
  #   @user = User.find_by_id(params[:user_id])
  # end

  def show
    @post = Post.find_by_id(params[:id])
    @user = User.find_by_id(params[:user_id])
  end

  def new
    @user = User.find_by_id(params[:user_id])
    @post = Post.new
  end

  def create
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
      flash[:error] = "Error saving update"
      redirect_to edit_post_path
    end
  end

  def destroy
    post = Post.find_by_id(params[:id])
    post.destroy
    redirect_to user_path(post.user_id)
  end


  private

  def post_params
    params.require(:post).permit(:title, :content)
  end


end
