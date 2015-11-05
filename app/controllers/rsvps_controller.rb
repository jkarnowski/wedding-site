class RsvpsController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	User.create(user_params)

    flash[:notice] = "We got your RSVP"
  	redirect_to root_path
  end

  def show
  end

  private
	def user_params
		params.require(:user).permit(:name, :email, :rsvp_response, :playlists_attributes => :song)
	end

end


