class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def recent_posts
        sorted_posts = self.posts.sort_by(&:created_at)
        sorted_posts[0].title
    end

    def featured_post
        sorted_posts = self.posts.sort_by(&:likes)
        sorted_posts[0]
    end

end
