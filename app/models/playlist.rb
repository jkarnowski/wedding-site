class Playlist < ActiveRecord::Base

	belongs_to :user

	validates :song, presence: true
end
