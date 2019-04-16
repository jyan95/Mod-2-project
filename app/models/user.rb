class User < ApplicationRecord
  has_many :carts
  has_many :user_tools
  has_many :tools, through: :user_tools


  def add_user_tool_params(params)
    user_tools(params)
    # user_tools.cost = params[:cost]
    # user_tools.image = params[:image]
    # user_tools.description = params[:description].strip
    # user_tools.tool_id = params[:tool_id]
  end
end
