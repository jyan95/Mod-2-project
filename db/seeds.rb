# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Faker for user

10.times do
  User.create(name: Faker::Name.name, username: Faker::Name.unique.name, password: Faker::String.random(8), phone: Faker::Number.number(9))
end


# Faker for tools

10.times do
  Tool.create(name: Faker::Commerce.product_name, category_id: Faker::Number.number(1))
end

#Faker for Category

10.times do
  Category.create(name: Faker::Commerce.department(1))
end

# # Faker for
#
# 10.times do
#
# end
#
# # Faker for
#
# 10.times do
#
# end
