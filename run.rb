
require_relative 'user'
require_relative 'product'
require_relative 'review'

# Example usage
user = User.new("JohnDoe", "johndoe@example.com")
product = Product.new("Ruby book", 29.99)
review = Review.new(product, user, 5, "Great book!")
review.display_info
