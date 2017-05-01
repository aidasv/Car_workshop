class Visit < ApplicationRecord
  belongs_to :client
  belongs_to :car
  has_many :visit_statuses
  has_many :services
end
