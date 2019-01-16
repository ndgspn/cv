class SiteIdentity < ApplicationRecord
  validates :site_name,        presence: true
  validates :site_description, presence: true
  validates :site_meta,        presence: true
end
