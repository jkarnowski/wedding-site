class ChargesController < ApplicationController


	def new
		# if request.xhr?
		# 	render 'charge', :layout => false
		# else
		# 	redirect_to charges_path
		# end
	end

# how do I get the amount from the params in the form? 
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
	  redirect_to registry_path
	end

	private

	def charge_params
		params.permit(:amount)
	end

end


