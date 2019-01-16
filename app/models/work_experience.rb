class WorkExperience < ApplicationRecord
  belongs_to :user

  validates :job_title,  presence: true
  validates :company,    presence: true
  validates :start_date, presence: true
  validates :end_date,   presence: true

  def self.ordered
    order(id: :asc)
  end
end
