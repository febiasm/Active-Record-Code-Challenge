class User < ActiveRecord::Base
  # A user can have many reviews
  has_many :reviews
  # A user can have many products through their reviews
  has_many :products, through: :reviews

  # Returns the user's favorite product based on the highest rated review they've left
  def favorite_product
      # Orders the user's reviews by star rating in descending order (highest first)
      # Returns the first review (highest rated) from the ordered list
      products.order("reviews.star_rating DESC").first
  end

  # Removes all reviews by the user for a given product
  def remove_reviews(product)
      # Find all reviews by the user for the given product
      reviews.where(product_id: product.id).destroy_all
  end
end
