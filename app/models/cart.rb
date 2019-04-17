class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_tools
  has_many :user_tools, through: :cart_tools

  def set_total
    total = self.costs.reduce(:+)
    # byebug
    self.update(total: total)
  end

  def checkout
   self.update(complete: true)
  end

  def tools
    user_tools.map{|ut| ut.tool}
  end

  def costs
    user_tools.map{|ut| ut.cost}
  end

  def counterparties
    user_tools.map{|ut| ut.user}
  end
end
