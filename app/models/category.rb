class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :categorizations, dependent: :destroy
  has_many :posts, through: :categorizations

  validates :name, presence: true

  def self.ordered
    order(id: :desc)
  end

  def self.category(params)
    category = params[:id]
    friendly.find(category)
  end

end
