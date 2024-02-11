class Admin::CommentsController < Admin::BaseController
    def index
    end
  
    def show
    end
  
    def new
    end
  
    def create 
      @post = Post.find_by(slug: params[:post_slug])
      @comment = @post.comments.create(comment_params)
      redirect_to admin_post_path(@post)
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:body, :user_id)
    end
end