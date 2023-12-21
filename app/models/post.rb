class Post < ApplicationRecord
    before_create :slugify
    before_validation :title_and_body_capitalize
    has_one_attached :image
    validates :title, :body, :image, presence: true

    def slugify
        self.slug = title.parameterize
    end

    def title_and_body_capitalize
        self.title = title.capitalize
        self.body = body.capitalize
    end

    def to_param
        slug
    end
end
