class FormalEducation < ApplicationRecord
  belongs_to :user

  validates :university_name, presence: true
  validates :major,           presence: true
  validates :degree,          presence: true
  validates :start_date,      presence: true
  validates :end_date,        presence: true

  def self.ordered
    order(id: :asc)
  end

  def self.formal_education(params)
    formal_education = params[:id]
    find(formal_education)
  end
end
