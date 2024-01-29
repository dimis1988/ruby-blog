class Admin::PostsController < Admin::BaseController
    def index
        @posts = Post.with_attached_image.all
      end
    
      def show
        @post = Post.find_by(slug: params[:slug])
      end
    
      def new
        @post = current_user.posts.build
      end
    
      def create
        @post = current_user.posts.build(post_params)
        if @post.save
          redirect_to admin_post_path(@post), notice: 'Post successfully created...'
        else
          render :new
        end
      end
    
      def edit
        @post = Post.find_by(slug: params[:slug])
      end
    
      def update
        @post = Post.find_by(slug: params[:slug])
        if @post.update(post_params)
          redirect_to admin_post_path(@post), notice: 'Post successfully updated...'
        else
          render :edit
        end
      end
    
      def destroy
        @post = Post.find_by(slug: params[:slug])
        @post.destroy
        redirect_to posts_path, notice: 'Post successfully deleted...'
      end
    
      private

      def post_params
        params.require(:post).permit(:user_id, :title, :body, :active, :image, :slug, :post_category_id)
      end
end