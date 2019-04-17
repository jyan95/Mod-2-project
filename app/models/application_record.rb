class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def formatted_date
    self.created_at.strftime("%m/%d/%Y - %I:%M%p")
  end
end
