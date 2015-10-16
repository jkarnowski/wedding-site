class User < ActiveRecord::Base

	has_many :playlists
	has_one :response

	validates :email, presence: true, uniqueness: true

	# has_secure_password
end
