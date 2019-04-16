class User < ApplicationRecord
  # has_secure_password
  
  has_many :carts
  has_many :user_tools
  has_many :tools, through: :user_tools



  def add_user_tool_params(params)
    UserTool.create(params)
    # user_tools.cost = params[:cost]
    # user_tools.image = params[:image]
    # user_tools.description = params[:description].strip
    # user_tools.tool_id = params[:tool_id]
    # user_tools.user_id = params[:id']     
  end

end
