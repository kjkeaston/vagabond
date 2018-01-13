class PostsController < ApplicationController

  def show
    @post = Post.find_by(params[:_id])
  end

  

end
