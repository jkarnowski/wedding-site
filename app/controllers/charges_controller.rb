class ChargesController < ApplicationController


	def index
		
	end

	def new
	end

	def create
	  # Amount in cents

	  customer = Stripe::Customer.create(
	    :email => params[:email],
	    :card  => params[:stripeToken]
	  )

	  @charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => charge_params,
	    :description => 'honeymoon contribution',
	    :currency    => 'usd'
	  )

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  
	  redirect_to root_path
	end

	
	private

	def charge_params
		params.permit(:amount)
	end

end


