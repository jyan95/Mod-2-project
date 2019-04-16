class Tool < ApplicationRecord
  belongs_to :category
  has_many :user_tools
  has_many :users, through: :user_tools

  def user
    self.user_tool.user
  end

end
