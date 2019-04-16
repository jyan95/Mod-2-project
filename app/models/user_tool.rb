class UserTool < ApplicationRecord
  belongs_to :user
  has_many :tools
  has_many :cart_tools
end
