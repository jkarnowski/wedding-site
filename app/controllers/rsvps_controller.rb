class RsvpsController < ApplicationController
  
  def index
    @rsvps = Rsvp.all
  end

  def new
  	@rsvp = Rsvp.new
  end

  def create
    p params
  	@rsvp = Rsvp.create(rsvp_params)
  end

  def show
    @rsvp = Rsvp.find(params[:id])
  end

  private
	def rsvp_params
		params.require(:rsvp).permit(:name, :email, :rsvp_response, :number_of_guests, playlists_attributes: [:song])
	end

end