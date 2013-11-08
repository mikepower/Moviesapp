class User < ActiveRecord::Base
	has_secure_password
	has_many :posts

	validates :email, :name, :dob, :photo, presence: true
	validates :email, uniqueness: true
	validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}

	def username
		username = self.name + " " + self.email
	end

	def age
		age = ((Date.current - self.dob) / 365).to_i
	end
end