class PagesController < ApplicationController
  def index
    @post_categories = PostCategory.with_attached_image.all
    @posts = Post.includes(:post_category).with_attached_image.order("created_at DESC").limit(3)
  end
  
end
