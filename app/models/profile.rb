class Profile < ApplicationRecord
  belongs_to :user
  validates :about, presence: true

  def self.profile
    all
  end
end
