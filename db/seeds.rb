# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding database..."

#  CREATE USERS
User.create(username: "John", password: "password")
User.create(username: "Jane", password: "password")
User.create(username: "Mary", password: "password")


# CREATE VENUES
Venue.create(
    name: "Garden center", 
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false), 
    city: "Yonkers",
    state: "New York",
    image_url: 'https://images.unsplash.com/photo-1550948390-6eb7fa773072?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1748&q=80',
    price: 50, 
    user_id: User.first.id
)

Venue.create(
    name: "Rooftop Terrace", 
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false), 
    city: "New York",
    state: "New York",
    image_url: 'https://images.unsplash.com/photo-1493246318656-5bfd4cfb29b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
    price: 150, 
    user_id: User.first.id
)

# # CREATE REVIEWS
Venue.all.each do |space|
    2.times do
        space.reviews.create(
            title: Faker::Quote.singular_siegler,
            comment: Faker::Quote.matz,
            user_id: User.all.sample.id
            )
    end
end





puts "Done seeding!!!"