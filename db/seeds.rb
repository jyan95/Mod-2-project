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



require 'faker'

# Faker for User
User.destroy_all
# Category.destroy_all
# Tool.destroy_all
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

# Category.create(name: "General Purpose")
# Category.create(name: "Air & Pneumatic")
# Category.create(name: "Power Cleaning")
# Category.create(name: "Testing")
# Category.create(name: "Landscaping")
# Category.create(name: "Power Tools")

# 20.times do
#   Category.create(name: Faker::Commerce.department(1))
# end

# Faker for UserTool

# 10.times do
#   UserTool.create(user_id: Faker::Number.number(1), cost: Faker::Number.number(2), description: Faker::String.random(20..50))
# end

# Faker for Tool

Tool.create(name:'Bender',category_id: 13)
Tool.create(name:'Clamp',category_id: 13)
Tool.create(name:'Crimper',category_id: 13)
Tool.create(name:'Cutter',category_id: 13)
Tool.create(name:'Plastering',category_id: 13)
Tool.create(name:'Hand Saw',category_id: 13)
Tool.create(name:'Toolkits',category_id: 13)
Tool.create(name:'Masonry',category_id: 13)
Tool.create(name:'Vice',category_id: 13)
Tool.create(name:'Chisel',category_id: 13)
Tool.create(name:'Lever',category_id: 13)

Tool.create(name:'Air Compressor',category_id: 14)
Tool.create(name:'Air Hose',category_id: 14)
Tool.create(name:'Pneumatic Hose',category_id: 14)
Tool.create(name:'Hose Clamp',category_id: 14)

Tool.create(name:'Power Drill',category_id: 15)
Tool.create(name:'Heathen',category_id: 15)
Tool.create(name:'Power Saw',category_id: 15)
Tool.create(name:'Power Wrench',category_id: 15)
Tool.create(name:'Pipe Cutter',category_id: 15)
Tool.create(name:'Heat Gun',category_id: 15)
Tool.create(name:'Cable Feeder',category_id: 15)
Tool.create(name:'Power Crimper',category_id: 15)

Tool.create(name:'Electrical Power Tester',category_id: 16)
Tool.create(name:'Fiber Optics Tester',category_id: 16)
Tool.create(name:'Temperature Tester',category_id: 16)
Tool.create(name:'Humidity Tester',category_id: 16)
Tool.create(name:'Phone Line Tester',category_id: 16)
Tool.create(name:'Borescope',category_id: 16)
Tool.create(name:'Light Meter',category_id: 16)
Tool.create(name:'Sound Level Meter',category_id: 16)

Tool.create(name:'Mower',category_id: 17)
Tool.create(name:'Trimmer',category_id: 17)
Tool.create(name:'Hose',category_id: 17)
Tool.create(name:'Shovel',category_id: 17)
Tool.create(name:'Wheelbarrow',category_id: 17)
Tool.create(name:'Pickaxe',category_id: 17)
Tool.create(name:'Snowblower',category_id: 17)

Tool.create(name:'Vacuum',category_id: 18)
Tool.create(name:'Pressure Washer',category_id: 18)
Tool.create(name:'Rake',category_id: 18)
Tool.create(name:'Leaf Blower',category_id: 18)


# 20.times do
#   # byebug
#   Tool.create(name: Faker::Commerce.product_name, category_id: Faker::Number.number(1))
# end

# Faker for CartTool

# 20.times do
#   CartTool.create(cart_id: Faker::Number.number(1), user_tool_id: Faker::Number.number(1))
# end
