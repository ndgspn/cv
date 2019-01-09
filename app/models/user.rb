class User < ApplicationRecord
  has_many :posts
  has_many :work_experiences
end
