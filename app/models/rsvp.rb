class Rsvp < ActiveRecord::Base

	has_one :playlist
	accepts_nested_attributes_for :playlist

	validates :email, uniqueness: true
	validates :name, :rsvp_response, :number_of_guests, presence: true

end