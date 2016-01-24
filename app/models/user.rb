class User < ActiveRecord::Base
	has_many :boats, dependent: :destroy
	has_many :follows, dependent: :destroy
	has_many :followingboats, through: :follows, source: :boat, dependent: :destroy
 
	validates :email, presence: true, uniqueness: true

	has_secure_password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create

	mount_uploader :user_images, UserImagesUploader
end
