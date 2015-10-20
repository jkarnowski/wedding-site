class ChargesController < ApplicationController
	def new
	end

	def create
		# amount in cents
		@amount = 500

		customer = Stripe::Customer.create(customer_params)

		charge = Stripe::Charge.create(charge_params, :currency => 'usd')

	rescue Stripe::CardError => e 
		flash[:error] = e.message
		redirect_to charges_path
	end

	private
	def customer_params
		params.permit :email, :card
	end

	def charge_params
		params.permit :customer, :amount, :description
	end
end
