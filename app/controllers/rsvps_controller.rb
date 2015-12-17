class RsvpsController < ApplicationController
  
  def index
    @rsvps = Rsvp.all
  end

  def new
  	@rsvp = Rsvp.new
  end

  def create
  	@rsvp = Rsvp.create(rsvp_params)
    flash[:notice] = "We got your RSVP"

    redirect_to rsvps_path(@rsvp)
  end

  def show
    @rsvp = Rsvp.find(params[:id])
  end

  private
	def rsvp_params
		params.require(:rsvp).permit(:email, :rsvp_response, :playlists_attributes => :song)
	end

end


