class PostCategoriesController < ApplicationController
  
  def index
    @post_categories = PostCategory.with_attached_image.all
  end

  def show
    @post_category = PostCategory.find_by(slug: params[:slug])
  end

  def related_posts 
    @post_category = PostCategory.find_by(slug: params[:slug])
    @posts = @post_category.posts.paginate(page: params[:page], per_page: 6)
  end

  def new
    @post_category = PostCategory.new
  end

  def create
    @post_category = PostCategory.new(post_category_params)
    if @post_category.save
      redirect_to post_category_path(@post_category)
    else
      render :new 
    end
  end

  def edit
    @post_category = PostCategory.find_by(slug: params[:slug])
  end

  def update
    @post_category = PostCategory.find_by(slug: params[:slug])
    if @post_category.update(post_category_params)
      redirect_to post_category_path(@post_category)
    else
      render :edit
    end
  end

  def destroy
    @post_category = PostCategory.find_by(slug: params[:slug])
    @post_category.destroy 
    redirect_to post_categories_path
  end

  private

  def post_category_params
    params.require(:post_category).permit(:name, :active, :image, :slug)
  end
end
