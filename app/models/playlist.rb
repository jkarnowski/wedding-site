class Playlist < ActiveRecord::Base

	belongs_to :rsvp

	# validates :song, presence: true
end
