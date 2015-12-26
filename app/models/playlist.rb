class Playlist < ActiveRecord::Base

	belongs_to :rsvp
	# validates_presence_of :song

end
