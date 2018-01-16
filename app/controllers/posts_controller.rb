class PostsController < ApplicationController

  # def index
  #   @user = User.find_by_id(params[:user_id])
  # end

  def show
    @post = Post.find_by_id(params[:id])
    @user = User.find_by_id(params[:user_id])
  end

end
