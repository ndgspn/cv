class WorkExperience < ApplicationRecord
  belongs_to :user

  def self.ordered
    order(id: :asc)
  end
end
