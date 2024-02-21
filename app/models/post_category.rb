class PostCategory < ApplicationRecord
    has_many :posts, dependent: :destroy
    before_validation :capitalize_the_name
    validates :name, :image, presence: true
    has_one_attached :image
    before_save :slugify

    def slugify
      self.slug = name.parameterize
  end

  def to_param
    slug
  end 
    
    def capitalize_the_name
      self.name = name.capitalize
    end
end
