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
  User.new(name: Faker::Name.name, username: Faker::Name.unique.name)
end


# Faker for tools

10.times do
  Tool.new(name: Faker::Commerce.product_name, category: Faker::Commerce.department(1))
end

#Faker for

