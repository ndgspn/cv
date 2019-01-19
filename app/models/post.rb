class Post < ApplicationRecord

  extend FriendlyId

  friendly_id :title, use: :slugged

  belongs_to :user
  has_many :categorizations, dependent: :destroy
  has_many :categories, through: :categorizations

  validates :title,   presence: true
  validates :content, presence: true

  def self.ordered
    order(id: :desc)
  end

  def self.paginated(page)
    paginate(per_page: 3, page: page)
  end

  def user_name
    user.name
  end

  def self.search_post(params)
    where('title like ?', "%#{params}%")
  end

  def self.monthly_archive
    order(created_at: :desc).group_by { |p| p.created_at.beginning_of_month }
  end

end
