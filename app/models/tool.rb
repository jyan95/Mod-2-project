class Tool < ApplicationRecord
  belongs_to :category
  belongs_to :user_tool

  def user
    self.user_tool.user
  end

end
