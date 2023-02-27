require_relative '../config/environment'
puts "running!"

Product.destroy_all
User.destroy_all
Review.destroy_all

product1= Product.create(name: "Apple iPhone 13 Pro")
product2= Product.create(name: "Samsung Galaxy S21 Ultra")
product3= Product.create(name: "Sony PlayStation 5")
product4= Product.create(name: "Bose QuietComfort Earbuds")
product5= Product.create(name: "Louis Vuitton Horizon Soft Duffle 55")

user1 = User.create(name: "Trevor")
user2 = User.create(name: "Febias")
user3 = User.create(name: "Thiru")
user4 = User.create(name: "Tiffany")
user5 = User.create(name: "Tracey")

review = Review.create(
  comment: "Awesome product!",
  star_rating: 1,
  product_id: product1.id,
  user_id: user1.id
)

puts "complete"
