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
  	Playlist.create(user_params)
  	redirect_to root_path
  end

end
