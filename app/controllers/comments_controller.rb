class CommentsController < ApplicationController
  # add before_action to authorize specific actions for specific users

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:content))
    # Don't need name of commenter (should be getting current_user's name from DB)
    # Would be nice to handle the possibility that the comment does not get created properly
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    # Would be nice to handle the possibility that the comment does not get deleted properly
    redirect_to post_path(@post)
  end

end
