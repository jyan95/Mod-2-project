class UserTool < ApplicationRecord
  belongs_to :user
  belongs_to :tool
  has_many :cart_tools
end
