class Expertise < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :level, presence: true

  def self.ordered
    order(id: :asc)
  end
end
