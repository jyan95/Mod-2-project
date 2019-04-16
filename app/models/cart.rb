class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_tools
  has_many :user_tools, through: :cart_tools

  def add_to_cart(user_tool_id)
    CartTool.create(cart_id: self.id, user_tool_id: user_tool_id)
  end
end
