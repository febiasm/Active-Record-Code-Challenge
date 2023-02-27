class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def print_review
      puts "The following review was written by #{self.user.name} for the product #{self.product.name}.
      It received a star rating of #{self.star_rating} and the comment was: #{self.comment}".
     end

end
