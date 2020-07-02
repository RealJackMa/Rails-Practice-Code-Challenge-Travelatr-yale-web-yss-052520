class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, uniqueness: true
    validates :age, numericality: { greater_than: 0}
    validates :bio, length: { minimum: 30 }

    def total_likes
        likes = self.posts.map{ |post| post.likes}
        likes.sum
    end

    def featured_post
        sorted_posts = self.posts.sort_by(&:likes)
        sorted_posts[0].title
    end
end
