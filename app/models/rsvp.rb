class Rsvp < ActiveRecord::Base

	has_many :playlists
	accepts_nested_attributes_for :playlists

	validates :email, uniqueness: true
	validates :name
	validates :rsvp_response, presence: true


end