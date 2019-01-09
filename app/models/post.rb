class Post < ApplicationRecord

  extend FriendlyId

  friendly_id :title, use: :slugged

  belongs_to :user
  has_many :categorizations, dependent: :destroy
  has_many :categories, through: :categorizations

  def self.ordered
    order(id: :desc)
  end

  def self.paginated(page)
    paginate(per_page: 2, page: page)
  end

  def user_name
    user.name
  end

end
