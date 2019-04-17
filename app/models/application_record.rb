class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def formatted_date
    self.updated_at.strftime("%m/%d/%Y - %I:%M%p")
  end
end
