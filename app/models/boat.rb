class Boat < ActiveRecord::Base
  belongs_to :user
  has_many :jobs, dependent: :destroy
  has_many :follows
  has_many :followers, through: :follows, source: :user

  validates :name, presence: true, uniqueness: true
  validates :max_capacity, presence: true
  validates :current_location, presence: true
  validates :current_location, inclusion: { in: %w(Rome Paris Panama Brazil Trinidad Alaska The Moon Mars The Sun),
    message: "%{value} is not a valid size" }

	mount_uploader :boat_images, BoatImagesUploader
end
