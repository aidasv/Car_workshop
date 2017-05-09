class Service < ApplicationRecord
  has_many :repair_statuses
  belongs_to :worker
  belongs_to :visit
  has_many :works
  has_many :parts

  def sum_parts_price
    sum = 0
    parts.each do |part|
      sum += part.quantity * part.price
    end
    sum
  end

  def sum_works_price
    sum = 0
    works.each do |work|
      sum += work.quantity * work.price
    end
    sum
  end
end

