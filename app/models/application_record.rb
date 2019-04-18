class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def formatted_date
    self.created_at.strftime("%B %e, %Y")
  end
end
