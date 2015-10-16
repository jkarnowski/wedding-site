class PlaylistsController < ApplicationController
  def index
  	@playlists = Playlist.all 
  end

  def new
  end

  def create
  end

  def show
  end
end
