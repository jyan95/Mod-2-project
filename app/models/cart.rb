class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_tools
  has_many :user_tools, through: :cart_tools

  def total
    @total
  end

  def total=(total)

  end

  def tools
    self.user_tools.each do |ut|
      
    end
  end
end
