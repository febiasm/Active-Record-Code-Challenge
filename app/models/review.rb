class Review < ActiveRecord::Base
  # Associations
  belongs_to :user
  belongs_to :product

  # Validations
  validates :star_rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :comment, presence: true, length: { maximum: 100 }
  validates :star_rating, numericality: { only_integer: true, message: "rating must be a whole number" }

  # reviews
  def print_review
    puts "The following review was written by #{self.user.name} for the product #{self.product.name}."
    puts "It received a star rating of #{self.star_rating} and the comment was: #{self.comment}"
  end
end
