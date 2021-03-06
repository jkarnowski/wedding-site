class User < ActiveRecord::Base

	has_secure_password

	has_many :playlists

	validates :email, presence: true, uniqueness: true
	validates :name, presence: true, uniqueness: true
	validates :password, presence: true


end
