class Category < ApplicationRecord
  has_many :categorizations, dependent: :destroy
  has_many :posts, through: :categorizations
end
