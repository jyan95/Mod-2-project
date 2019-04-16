class User < ApplicationRecord
  has_many :carts
  has_many :user_tools
  has_many :tools, through: :user_tools


  def add_user_tool_params(params)
    user_tool.cost = params[:cost]
    user_tool.image = params[:image]
    user_tool.description = params[:description].strip
  end
end
