class PlaylistsController < ApplicationController
  def index
  	@playlists = Playlist.all
  end

  def new
  	@playlist = Playlist.new
  end

  def show
  end

  def create
  	Playlist.create(playlist_params)
  	redirect_to playlists_path
  end


  private
  def playlist_params
  	params.require(:playlist).permit(:song)
  end
end
