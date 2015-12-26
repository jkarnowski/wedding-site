class Rsvp < ActiveRecord::Base

	has_one :playlist
	accepts_nested_attributes_for :playlist

	validates :email, uniqueness: true
	validates :rsvp_response, presence: true

end