# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: "cole")
u2 = User.create(username: "haven")

# p1 = Photo.create(nasa_photo_id: 35423, user_id: 1)
p2 = Photo.create(user_id: 1)
p3 = Photo.create(user_id: 2)
# p4 = Photo.create(nasa_photo_id: 321111, user_id: 2)

