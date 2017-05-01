class Service < ApplicationRecord
  has_many :repair_statuses
  belongs_to :worker
  belongs_to :visit
  has_many :works
  has_many :parts
end
