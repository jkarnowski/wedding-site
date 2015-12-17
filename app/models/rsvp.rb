class Rsvp < ActiveRecord::Base

	has_many :playlists
	accepts_nested_attributes_for :playlists

	validates :email, presence: true, uniqueness: true
	validates :name, presence: true, uniqueness: true
	validates :rsvp_response, presence: true


end
