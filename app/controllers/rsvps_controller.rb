class RsvpsController < ApplicationController
  
  def index
    @rsvps = Rsvp.all
  end

  def new
  	@rsvp = Rsvp.new
  end

  def create
  	@rsvp = Rsvp.create(rsvp_params)

    if @rsvp.save
      rsvps_path
    else
      flash[:error] = "Oops! Try again. Name, email, number of guests and your response are required."
      redirect_to :back
    end
  end


  private
	def rsvp_params
		params.require(:rsvp).permit(:name, :email, :rsvp_response, :number_of_guests, playlists_attributes: [:song])
	end

end