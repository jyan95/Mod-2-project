class UserTool < ApplicationRecord
  belongs_to :user
  belongs_to :tools
  has_many :cart_tools
end
