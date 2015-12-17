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

    # want to redirect to SHOW page and SHOW the RSVP that was sent it
    #WHY isn't it saving to the database now?
    redirect_to root_path
  end

  def show
    @rsvp = Rsvp.find(params[:id])
  end

  private
	def rsvp_params
		params.require(:rsvp).permit(:email, :rsvp_response, :playlists_attributes => :song)
	end

end


