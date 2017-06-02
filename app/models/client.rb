class Client < ApplicationRecord
  has_many :cars
  has_many :visits, :through => :cars
  
  has_secure_password

end
