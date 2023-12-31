class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :slug
      t.boolean :active, default: true
      t.string :image

      t.timestamps
    end
    add_index :posts, :title, unique: true
  end
end
