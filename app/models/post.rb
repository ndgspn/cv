class Post < ApplicationRecord
  def self.ordered
    order(id: :desc)
  end
end
