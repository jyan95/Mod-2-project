class Category < ApplicationRecord
  has_many :tools

  def get_cat_img
    self.tools.first.user_tools.first.image
  end
end
