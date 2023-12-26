class AddPostCategoryIdToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :post_category_id, :integer
  end
end
