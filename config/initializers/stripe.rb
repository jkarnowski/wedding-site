Rails.configuration.stripe = {
	:publishable_key => ENV['PUBLISHABLE_KEY'],
	:secret_key => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

# from RailsCast
# include .env in .ignore
# Stripe.api_key = "secret key"
# STRIPE_PUBLIC_KEY = " "