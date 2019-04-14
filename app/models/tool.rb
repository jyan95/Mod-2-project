class Tool < ApplicationRecord
  belongs_to :category
  has_many :user_tools
end
