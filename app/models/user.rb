class User < ApplicationRecord
  # has_secure_password
  has_many :carts
  has_many :user_tools
  has_many :tools, through: :user_tools

  def add_user_tool_params(user_tool_params, tool_params, category_id)
    user_tool = UserTool.new(user_tool_params)
    user_tool.user_id = id
    tool = Tool.new(tool_params)
    tool.category_id = category_id[:user_tools]
    user_tool.tool_id = tool.id
    tool.save
    user_tool.save

  end
end
