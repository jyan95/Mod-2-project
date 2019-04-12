class User < ApplicationRecord
  has_many :carts
  has_many :user_tools
  has_many :tools, through: :user_tools
end
