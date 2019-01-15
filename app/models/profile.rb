class Profile < ApplicationRecord
  belongs_to :user

  def self.profile
    all
  end
end
