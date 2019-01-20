class Profile < ApplicationRecord
  belongs_to :user
  validates :about, presence: true

  def self.profile(params)
    profile = params[:id]
    find(profile)
  end

end
