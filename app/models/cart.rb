class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_tools
  has_many :user_tools, through: :cart_tools
  
end
