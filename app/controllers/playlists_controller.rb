class PlaylistsController < ApplicationController
  def index
  	@playlists = Playlist.all
  end

  def new
  	@playlist = Playlist.new
  end

  def create
  end

end
