class AddImageToPostCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :post_categories, :image, :string
  end
end
