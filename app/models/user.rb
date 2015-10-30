class User < ActiveRecord::Base

	has_many :playlists
	has_one :response

	validates :email, presence: true, uniqueness: true
	validates :name, presence: true, uniqueness: true
	validates :rsvp_response, presence: true

	# has_secure_password
end
