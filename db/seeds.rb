# Hand tools (general purpose)
# - bender
# - clamp
# - crimper
# - cutter
# - plastering
# - hand saw
# - toolkits
# - masonry
# - vises
# - chisel
# - crowbar
#
# Air & pneumatic
# - air compressor
# - air hose
# - pneumatic hose clamps
#
# Power tools
# - drill
# - heathen
# - power saw
# - wrench
# - pipe cutter
# - heat gun
# - cable feeder
# - power crimper
# - rotary hammer
#
# Testing instruments
# - electrical power tester
# - fiber optics tester
# - temperature and humidity monitor
# - phone line tester
# - borescope
# - light meter
# - sound level meter
#
# Landscaping
# - mower
# - trimmer
# - hose
# - shovel
# - snowblower
# - wheelbarrow
# - sprinkler
#
# Cleaning
# - vacuums
# - pressure washer
# - lawn tools
# - leaf blower

Category.create(name: "General Purpose")
Category.create(name: "Air & Pneumatic")
Category.create(name: "Power Cleaning")
Category.create(name: "Testing")
Category.create(name: "Landscaping")
Category.create(name: "Power Tools")

require 'faker'

# Faker for User
User.destroy_all
Category.destroy_all
Tool.destroy_all
UserTool.destroy_all
Cart.destroy_all



# Faker for User

20.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Name.unique.name, password: Faker::String.random(8), phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)
end

# Faker for Cart
#
# 20.times do
#   Cart.create(user_id: Faker::Number.number(1), total: Faker::Number.number(3))
# end

# Faker for Category

# 20.times do
#   Category.create(name: Faker::Commerce.department(1))
# end

# Faker for UserTool

# 10.times do
#   UserTool.create(user_id: Faker::Number.number(1), cost: Faker::Number.number(2), description: Faker::String.random(20..50))
# end

# Faker for Tool
#
# 20.times do
#   # byebug
#   Tool.create(name: Faker::Commerce.product_name, category_id: Faker::Number.number(1))
# end

# Faker for CartTool

# 20.times do
#   CartTool.create(cart_id: Faker::Number.number(1), user_tool_id: Faker::Number.number(1))
# end
