class Tool < ApplicationRecord
  belongs_to :category
  has_many :user_tools, dependent: :destroy
  has_many :users, through: :user_tools

  validates :name, presence: true, length: {minimum: 4, maximum: 30}

  def get_image
    user_tools.last.image
  end

  def user_tool
    user = current_user
    # UserTool.where(tool_id: id).where(user_id: user.id)
    UserTool.find_by(tool_id: id, user_id: user.id)
  end

  def format
    name.capitalize.pluralize
  end
end
