class ChargesController < ApplicationController


	def index
	end

	def new
	end

	def create

		amount = params[:amount]

	  customer = Stripe::Customer.create(
	    :email => params[:StripeEmail],
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => amount,
	    :description => 'honeymoon contribution',
	    :currency    => 'usd'
	  )

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
	  flash[:notice] = "Transaction did not go through.Please try again."
	end

end