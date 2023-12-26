class CreatePostCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :post_categories do |t|
      t.string :name
      t.boolean :active, default: true

      t.timestamps
    end
    add_index :post_categories, :name, unique: true
  end
end
