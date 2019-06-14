require 'faker'

puts 'Creating 2 users...'
user = User.create!(
  email: "user@user.com",
  first_name: "John",
  last_name: "Lennon",
  password: 123456
)
puts "1. #{user.email}"

user2 = User.create!(
  email: "user2@user2.com",
  first_name: "Ringo",
  last_name: "Starr",
  password: 123456
)
puts "2. #{user2.email}"

  puts 'Creating 5 products...'
5.times do |i|
  product = Product.create!(
    name: Faker::Company.name,
    tagline: Faker::Company.catch_phrase
  )
  puts "#{i + 1}. #{product.name}"
end
puts 'Finished!'
