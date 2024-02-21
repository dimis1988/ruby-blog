class Admin::CommentsController < Admin::BaseController

    def new
      @post = Post.find_by(slug: params[:post_slug])
      @comment = @post.comments.new(parent_id: params[:parent_id])
    end
  
    def create 
      @post = Post.find_by(slug: params[:post_slug])
      @comment = @post.comments.create(comment_params)
      redirect_to admin_post_path(@post), notice: 'Comment successfully created...'
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:body, :user_id, :parent_id)
    end
end