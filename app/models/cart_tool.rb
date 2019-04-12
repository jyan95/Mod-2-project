class CartTool < ApplicationRecord
  belongs_to :cart
  belongs_to :user_tool

end
