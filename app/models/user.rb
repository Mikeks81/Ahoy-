class User < ActiveRecord::Base
	has_many :boats, dependent: :destroy
 
	validates :email, presence: true, uniqueness: true

	has_secure_password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create
end
