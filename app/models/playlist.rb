class Playlist < ActiveRecord::Base

	validates :song, presence: true
end
