class User < ApplicationRecord
	attr_accessor :password, :password_confirmation
	validates :password, presence: true
	validates :password, confirmation: true

	has_many :posts, dependent: :destroy
	validates :name, :email, :password, presence: true
	validates :email, uniqueness: true
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create

	def bcrypt_password
		self.password_digest = BCrypt::password.create(self.password)
	end
end
