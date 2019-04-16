class User < ApplicationRecord
  # has_secure_password
  
  has_many :carts
  has_many :user_tools
  has_many :tools, through: :user_tools

end
