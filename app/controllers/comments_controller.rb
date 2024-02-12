class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.find_by(slug: params[:post_slug])
    @comment = @post.comments.new(parent_id: params[:parent_id])
  end

  def create 
    @post = Post.find_by(slug: params[:post_slug])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :parent_id)
  end
end
