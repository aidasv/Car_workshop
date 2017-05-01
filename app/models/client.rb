class Client < ApplicationRecord
  has_many :cars
  has_many :visits
end
