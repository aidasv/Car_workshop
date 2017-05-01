class Car < ApplicationRecord
  belongs_to :client
  has_many :visits
end
