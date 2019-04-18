class UserTool < ApplicationRecord
  belongs_to :user
  belongs_to :tool
  has_many :cart_tools

  def in_use
    self.available == false
  end

  def tool_name
    self.tool.name.capitalize
  end

  def username
    self.user.username
  end
end
