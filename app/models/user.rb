class User < ApplicationRecord
  has_many :posts
  has_many :work_experiences
  has_many :formal_educations
  has_one  :profile

  has_secure_password
  validates :username, presence: true

end
