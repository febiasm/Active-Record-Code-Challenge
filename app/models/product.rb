class Product < ActiveRecord::Base
    # product reviews
    has_many :reviews
    # product users through reviews
    has_many :users, through: :reviews

    # review for a product
    def leave_review(user, star_rating, comment)
        Review.create(
            comment: comment,
            star_rating: star_rating,
            product_id: self.id,
            user_id: user.id
        )
    end

    # A method for printing all reviews for a product
    def print_all_reviews
        # all reviews for this product
        all_reviews = self.reviews
        # Iterate over each review and print 
        all_reviews.collect do |review|
            review.print_review
        end
    end

    # method for calculating the average star rating for a product
    def average_rating
        reviews.average(:star_rating)
    end

  end
