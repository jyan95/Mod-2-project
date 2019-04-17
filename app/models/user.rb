class User < ApplicationRecord
  has_secure_password
  has_many :carts
  has_many :user_tools
  has_many :tools, through: :user_tools

  before_save { self.email = email.downcase }
  before_save { self.username = username.downcase }

  validates :username,
            presence: true,
            # uniqness: true,
            length: { minimum: 5, maximum: 20 }
  validates :first_name,
            presence: true,
            length: {minimum: 5, maximum: 20}
  validates :last_name,
            presence: true,
            length: {minimum: 5, maximum: 20}
  validates :phone_number,
            presence: true,
            length: {minimum: 6, maximum: 10}
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email,
            presence: true,
            length: { maximum: 30},
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }

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
