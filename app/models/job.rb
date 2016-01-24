class Job < ActiveRecord::Base
  belongs_to :boat

  validates :vendor, presence: true, uniqueness: true
  validates :cargo, presence: true, length: { minimum: 50 }
  validates :containers, presence: true
  validates :price, presence: true,  numericality: {greater_than_or_equal_to: 1000}
  validates :origin_location, presence: true, inclusion: { in: %w(Rome Paris Panama Brazil Trinidad Alaska The_Moon Mars The_Sun),
    message: "%{value} is not a valid size" }
  validates :destination, presence: true, inclusion: { in: %w(Rome Paris Panama Brazil Trinidad Alaska The_Moon Mars The_Sun),
    message: "%{value} is not a valid size" }
  validates :date, presence: true

end
