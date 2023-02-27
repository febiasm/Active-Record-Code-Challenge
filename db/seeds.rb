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

user1 = User.create(name: "levy")
user2 = User.create(name: "niggo")
user3 = User.create(name: "bichwa")
user4 = User.create(name: "njiru")
user5 = User.create(name: "muguro")

review = Review.create(
  comment: "Awesome product!",
  star_rating: 5,
  product_id: product1.id,
  user_id: user1.id
)

puts "complete"
