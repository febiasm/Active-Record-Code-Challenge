# Load the Rails environment
require_relative '../config/environment'

# Output to console to indicate the script is running
puts "running!"

# Remove any existing data in the Review, Product and User tables
Review.destroy_all
Product.destroy_all
User.destroy_all

# Create new products and store in constants using descriptive names
iphone_13_pro = Product.create(name: "Apple iPhone 13 Pro")
galaxy_s21_ultra = Product.create(name: "Samsung Galaxy S21 Ultra")
playstation_5 = Product.create(name: "Sony PlayStation 5")
bose_quietcomfort_earbuds = Product.create(name: "Bose QuietComfort Earbuds")
louis_vuitton_horizon_duffle = Product.create(name: "Louis Vuitton Horizon Soft Duffle 55")

# Create new users and store in constants using descriptive names
trevor = User.create(name: "Trevor")
febias = User.create(name: "Febias")
thiru = User.create(name: "Thiru")
tiffany = User.create(name: "Tiffany")
tracey = User.create(name: "Tracey")

# Create a review for the first product using the first user
review = Review.create(
  comment: "Awesome product!",
  star_rating: 1,
  product_id: iphone_13_pro.id,
  user_id: trevor.id
)

# Output to console to indicate the script has finished running
puts "complete"
